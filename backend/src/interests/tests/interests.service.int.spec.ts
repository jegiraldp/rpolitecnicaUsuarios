import { Test, TestingModule } from '@nestjs/testing';
import { TestDatabaseManager } from '../../common/tests/test-database';
import { TestHelpers, TestRepositories, TestServices } from '../../common/tests/test-helpers';
import { SeedService } from '../../common/seed/seedService';
import { BadRequestException, NotFoundException } from '@nestjs/common';
import { InterestMother } from './interests.mother';

describe('InterestsService - INT', () => {
  let services: TestServices;
  let repositories: TestRepositories;
  let module: TestingModule;

  beforeAll(async () => {
    module = await TestDatabaseManager.initializeInt();
    services = TestHelpers.getServices(module);
    repositories = TestHelpers.getRepositories(module);
  });

  afterAll(async () => {
    await TestDatabaseManager.cleanUp();
  });

  afterEach(async () => {
    await TestHelpers.setupTestData(module.get<SeedService>(SeedService));
  });

  afterAll(async () => {
    await module.close();
  });

  describe('Create', () => {
    it('creates an interest', async () => {
      const res = await services.interestsService.create(InterestMother.dto());
      expect(res).toBeDefined();
      expect(res?.id).toBeDefined();
    });
    it('rejects duplicate name', async () => {
      await services.interestsService.create(InterestMother.dto({ name: 'dup' }));
      await expect(services.interestsService.create(InterestMother.dto({ name: 'dup' }))).rejects.toThrowError(BadRequestException);
    });
  });

  describe('Find', () => {
    it('findAll paginated', async () => {
      await services.interestsService.create(InterestMother.dto({ name: 'a1' }));
      await services.interestsService.create(InterestMother.dto({ name: 'a2' }));
      const res = await services.interestsService.findAll({ page: 1, limit: 1 } as any);
      expect(Array.isArray(res)).toBe(true);
      expect(res.length).toBe(1);
    });
    it('filter by name contains', async () => {
      await services.interestsService.create(InterestMother.dto({ name: 'biology' }));
      const res = await services.interestsService.findAll({ page: 1, limit: 10, name: 'bio' } as any);
      expect(res.length).toBeGreaterThanOrEqual(1);
    });
  });

  describe('Update/Remove', () => {
    it('updates with updatedAt', async () => {
      const created = await services.interestsService.create(InterestMother.dto({ name: 'old' }));
      const res = await services.interestsService.update(created!.id, { name: 'new' });
      expect(res?.name).toBe('new');
      expect(res?.updatedAt).toBeDefined();
    });
    it('soft deletes by setting deletedAt', async () => {
      const created = await services.interestsService.create(InterestMother.dto({ name: 'to-del' }));
      const res = await services.interestsService.remove(created!.id);
      expect(res?.deletedAt).toBeDefined();
    });
    it('throws NotFound on missing id', async () => {
      await expect(services.interestsService.update('missing', { name: 'x' })).rejects.toThrowError(NotFoundException);
      await expect(services.interestsService.remove('missing')).rejects.toThrowError(NotFoundException);
    });
  });
});

