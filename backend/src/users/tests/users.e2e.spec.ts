import { Test, TestingModule } from '@nestjs/testing';
import { INestApplication } from '@nestjs/common';
import * as request from 'supertest';
import { TestDatabaseManager } from '../../common/tests/test-database';
import { TestHelpers, TestRepositories, TestServices } from '../../common/tests/test-helpers';
import { UserMother } from './users.mother';
import { UsersService } from '../users.service';
import { CollegeMother } from '../../colleges/tests/colleges.mother';
import { InterestMother } from '../../interests/tests/interests.mother';
import { CareerMother } from '../../careers/tests/careers.mother';
import { CollegesService } from '../../colleges/colleges.service';
import { InterestsService } from '../../interests/interests.service';
import { CareersService } from '../../careers/careers.service';
import { SeedService } from 'src/common/tests/seed/seedService';

describe('Users - E2E', () => {
  let module: TestingModule;
  let app: INestApplication;
  let server: any;
  let services: TestServices;
  let repositories: TestRepositories;
  let userMother: UserMother;
  let collegeMother: CollegeMother;
  let interestMother: InterestMother;
  let careerMother: CareerMother;
  let authHeaders: Record<string, string>;

  const login = async () => {
    const res = await request(server)
      .post('/auth/login')
      .send({ username: 'admin', password: 'Admin123*' });
    authHeaders = { Authorization: `Bearer ${res.body.accessToken}` };
  };
  

  beforeAll(async () => {
    const testDB = await TestDatabaseManager.initializeE2E();
    app = testDB.app;
    module = testDB.module;
    server = app.getHttpAdapter().getInstance();
    services = TestHelpers.getServices(module);
    repositories = TestHelpers.getRepositories(module);
    userMother = new UserMother(module.get<UsersService>(UsersService));
    collegeMother = new CollegeMother(module.get<CollegesService>(CollegesService));
    interestMother = new InterestMother(module.get<InterestsService>(InterestsService));
    careerMother = new CareerMother(module.get<CareersService>(CareersService));
    await TestHelpers.setupTestData(module.get<SeedService>(SeedService));
    await login();
  });

  afterAll(async () => {
    await TestDatabaseManager.cleanUp();
  });

  beforeEach(async () => {
    await TestHelpers.setupTestData(module.get<SeedService>(SeedService));
    await login();
  });

  describe('POST /users', () => {
    it('creates a user with relations', async () => {
      const [college] = await collegeMother.createMany(1, { name: 'engineering' } as any);
      const [career] = await careerMother.createMany(1, { name: 'software' } as any);
      const [interest] = await interestMother.createMany(1, { name: 'ai' } as any);

      const res = await request(server).post('/users').set(authHeaders).send(UserMother.dto({
        username: 'john',
        email: 'john@example.com',
        collegeId: college!.id,
        careerId: career!.id,
        interestIds: [interest!.id],
      }));
      expect(res.status).toBe(201);
      expect(res.body?.college?.id).toBe(college!.id);
      expect(res.body?.career?.id).toBe(career!.id);
      expect(res.body?.interests?.length).toBe(1);
    });
  });

  describe('GET /users', () => {
    it('lists with pagination and filters', async () => {
      await request(server).post('/users').set(authHeaders).send(UserMother.dto({ username: 'alice', email: 'alice@example.com' }));
      await request(server).post('/users').set(authHeaders).send(UserMother.dto({ username: 'bob', email: 'bob@example.com' }));
      const res = await request(server).get('/users?page=1&limit=1&username=a');
      expect(res.status).toBe(200);
      expect(Array.isArray(res.body.data)).toBe(true);
      expect(res.body.data.length).toBe(1);
      expect(res.body.meta).toBeDefined();
    });
  });

  describe('GET /users/:id', () => {
    it('returns one by id', async () => {
      const created = await request(server).post('/users').set(authHeaders).send(UserMother.dto({ username: 'cid', email: 'cid@example.com' }));
      const res = await request(server).get(`/users/${created.body.id}`);
      expect(res.status).toBe(200);
      expect(res.body?.id).toBe(created.body.id);
    });
  });

  describe('PATCH /users/:id', () => {
    it('updates and sets updatedAt', async () => {
      const created = await request(server).post('/users').set(authHeaders).send(UserMother.dto({ username: 'old', email: 'old@example.com' }));
      const res = await request(server).patch(`/users/${created.body.id}`).set(authHeaders).send({ username: 'new' });
      expect(res.status).toBe(200);
      expect(res.body?.username).toBe('new');
      expect(res.body?.updatedAt).toBeDefined();
    });
    it('updates relations', async () => {
      const created = await request(server).post('/users').set(authHeaders).send(UserMother.dto({ username: 'rel', email: 'rel@example.com' }));
      const [i1] = await interestMother.createMany(1, { name: 'math' } as any);
      const res = await request(server).patch(`/users/${created.body.id}`).set(authHeaders).send({ interestIds: [i1!.id] });
      expect(res.status).toBe(200);
      expect(res.body?.interests?.length).toBe(1);
    });
  });

  describe('PATCH /users/:id/deactivate', () => {
    it('deactivates user', async () => {
      const created = await request(server).post('/users').set(authHeaders).send(UserMother.dto({ username: 'act', email: 'act@example.com' }));
      const res = await request(server).patch(`/users/${created.body.id}/deactivate`).set(authHeaders).send();
      expect(res.status).toBe(200);
      expect(res.body?.isActive).toBe(false);
    });
  });
});
