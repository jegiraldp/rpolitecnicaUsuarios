import { Test, TestingModule } from '@nestjs/testing';
import { INestApplication } from '@nestjs/common';
import * as request from 'supertest';
import { TestDatabaseManager } from '../../common/tests/test-database';
import { TestHelpers, TestRepositories, TestServices } from '../../common/tests/test-helpers';
import { SeedService } from '../../common/seed/seedService';
import { InterestMother } from './interests.mother';
import { InterestsService } from '../interests.service';

describe('Interests - E2E', () => {
  let module: TestingModule;
  let app: INestApplication;
  let services: TestServices;
  let repositories: TestRepositories;
  let interestMother: InterestMother;

  beforeAll(async () => {
    const testDB = await TestDatabaseManager.initializeE2E();
    app = testDB.app;
    module = testDB.module;
    services = TestHelpers.getServices(module);
    repositories = TestHelpers.getRepositories(module);
    interestMother = new InterestMother(
      module.get<InterestsService>(InterestsService),
    );
  });

  afterAll(async () => {
    await TestDatabaseManager.cleanUp();
  });

  afterEach(async () => {
    await TestHelpers.setupTestData(module.get<SeedService>(SeedService));
  });

  describe('POST /interests', () => {
    it('creates an interest', async () => {
      const res = await request(app.getHttpServer()).post('/interests').send(InterestMother.dto());
      expect(res.status).toBe(201);
      expect(res.body?.name).toBe(InterestMother.dto().name);
    });
    it('rejects duplicate name', async () => {
      await interestMother.createMany(1, { name: 'dup' } as any);
      const res = await request(app.getHttpServer()).post('/interests').send(InterestMother.dto({ name: 'dup' }));
      expect(res.status).toBe(400);
    });
  });

  describe('GET /interests', () => {
    it('lists with pagination', async () => {
      await interestMother.createMany(2);
      const res = await request(app.getHttpServer()).get('/interests?page=1&limit=1');
      expect(res.status).toBe(200);
      expect(Array.isArray(res.body)).toBe(true);
      expect(res.body.length).toBe(1);
    });
    it('filters by name (contains)', async () => {
      await interestMother.createMany(1, { name: 'biology' } as any);
      const res = await request(app.getHttpServer()).get('/interests?name=bio');
      expect(res.status).toBe(200);
      expect(Array.isArray(res.body)).toBe(true);
      expect(res.body.length).toBeGreaterThanOrEqual(1);
    });
  });

  describe('GET /interests/:id', () => {
    it('returns one by id', async () => {
      const [created] = await interestMother.createMany(1, { name: 'chem' } as any);
      const res = await request(app.getHttpServer()).get(`/interests/${created!.id}`);
      expect(res.status).toBe(200);
      expect(res.body?.id).toBe(created!.id);
    });
  });

  describe('PATCH /interests/:id', () => {
    it('updates and sets updatedAt', async () => {
      const [created] = await interestMother.createMany(1, { name: 'history' } as any);
      const res = await request(app.getHttpServer()).patch(`/interests/${created!.id}`).send({ name: 'Modern History' });
      expect(res.status).toBe(200);
      expect(res.body?.name).toBe('modern history');
      expect(res.body?.updatedAt).toBeDefined();
    });
  });

  describe('DELETE /interests/:id', () => {
    it('hard deletes the interest', async () => {
      const [created] = await interestMother.createMany(1, { name: 'to-del' } as any);
      const res = await request(app.getHttpServer()).delete(`/interests/${created!.id}`);
      expect(res.status).toBe(200);
      expect(res.body?.id).toBe(created?.id);

      const inDb = await repositories.interestRepository.findOne({ where: { id: created!.id } });
      expect(inDb).toBeNull();
    });
  });
});
