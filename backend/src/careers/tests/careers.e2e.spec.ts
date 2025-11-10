import { Test, TestingModule } from '@nestjs/testing';
import { INestApplication } from '@nestjs/common';
import * as request from 'supertest';
import { TestDatabaseManager } from '../../common/tests/test-database';
import { TestHelpers, TestRepositories, TestServices } from '../../common/tests/test-helpers';
import { SeedService } from '../../common/seed/seedService';
import { CareerMother } from './careers.mother';
import { CareersService } from '../careers.service';

describe('Careers - E2E', () => {
  let module: TestingModule;
  let app: INestApplication;
  let services: TestServices;
  let repositories: TestRepositories;
  let careerMother: CareerMother;

  beforeAll(async () => {
    const testDB = await TestDatabaseManager.initializeE2E();
    app = testDB.app;
    module = testDB.module;
    services = TestHelpers.getServices(module);
    repositories = TestHelpers.getRepositories(module);
    careerMother = new CareerMother(module.get<CareersService>(CareersService));
  });

  afterAll(async () => {
    await TestDatabaseManager.cleanUp();
  });

  afterEach(async () => {
    await TestHelpers.setupTestData(module.get<SeedService>(SeedService));
  });

  describe('POST /careers', () => {
    it('creates a career', async () => {
      const res = await request(app.getHttpServer()).post('/careers').send(CareerMother.dto());
      expect(res.status).toBe(201);
      expect(res.body?.name).toBe(CareerMother.dto().name);
    });
    it('rejects duplicate name', async () => {
      await careerMother.createMany(1, { name: 'dup' } as any);
      const res = await request(app.getHttpServer()).post('/careers').send(CareerMother.dto({ name: 'dup' }));
      expect(res.status).toBe(400);
    });
  });

  describe('GET /careers', () => {
    it('lists with pagination', async () => {
      await careerMother.createMany(2);
      const res = await request(app.getHttpServer()).get('/careers?page=1&limit=1');
      expect(res.status).toBe(200);
      expect(Array.isArray(res.body)).toBe(true);
      expect(res.body.length).toBe(1);
    });
    it('filters by name (contains)', async () => {
      await careerMother.createMany(1, { name: 'biology' } as any);
      const res = await request(app.getHttpServer()).get('/careers?name=bio');
      expect(res.status).toBe(200);
      expect(Array.isArray(res.body)).toBe(true);
      expect(res.body.length).toBeGreaterThanOrEqual(1);
    });
  });

  describe('GET /careers/:id', () => {
    it('returns one by id', async () => {
      const [created] = await careerMother.createMany(1, { name: 'chem' } as any);
      const res = await request(app.getHttpServer()).get(`/careers/${created!.id}`);
      expect(res.status).toBe(200);
      expect(res.body?.id).toBe(created!.id);
    });
  });

  describe('PATCH /careers/:id', () => {
    it('updates and sets updatedAt', async () => {
      const [created] = await careerMother.createMany(1, { name: 'history' } as any);
      const res = await request(app.getHttpServer()).patch(`/careers/${created!.id}`).send({ name: 'Modern History' });
      expect(res.status).toBe(200);
      expect(res.body?.name).toBe('modern history');
      expect(res.body?.updatedAt).toBeDefined();
    });
    it('rejects duplicate name', async () => {
      const [a] = await careerMother.createMany(1, { name: 'a-career' } as any);
      const [b] = await careerMother.createMany(1, { name: 'b-career' } as any);
      const res = await request(app.getHttpServer()).patch(`/careers/${a!.id}`).send({ name: b!.name });
      expect(res.status).toBe(400);
    });
  });

  describe('DELETE /careers/:id', () => {
    it('hard deletes the career', async () => {
      const [created] = await careerMother.createMany(1, { name: 'to-del' } as any);
      const res = await request(app.getHttpServer()).delete(`/careers/${created!.id}`);
      expect(res.status).toBe(200);
      expect(res.body?.id).toBe(created?.id);

      const inDb = await repositories.careerRepository.findOne({ where: { id: created!.id } });
      expect(inDb).toBeNull();
    });
  });
});
