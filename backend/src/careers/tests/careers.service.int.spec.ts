import { Test, TestingModule } from '@nestjs/testing';
import { TestDatabaseManager } from '../../common/tests/test-database';
import { TestHelpers, TestRepositories, TestServices } from '../../common/tests/test-helpers';
import { SeedService } from '../../common/seed/seedService';
import { BadRequestException, NotFoundException } from '@nestjs/common';
import { CareerMother } from './careers.mother';

describe('CareersService - INT', () => {
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
    it('creates a career', async () => {
      const res = await services.careersService.create(CareerMother.dto());
      expect(res).toBeDefined();
      expect(res?.id).toBeDefined();
    });
    it('rejects duplicate name', async () => {
      await services.careersService.create(CareerMother.dto({ name: 'dup' }));
      await expect(services.careersService.create(CareerMother.dto({ name: 'dup' }))).rejects.toThrowError(BadRequestException);
    });
  });

  describe('Find', () => {
    it('findAll paginated', async () => {
      await services.careersService.create(CareerMother.dto({ name: 'a1' }));
      await services.careersService.create(CareerMother.dto({ name: 'a2' }));
      const res = await services.careersService.findAll({ page: 1, limit: 1 } as any);
      expect(Array.isArray(res)).toBe(true);
      expect(res.length).toBe(1);
    });
    it('filter by name contains', async () => {
      await services.careersService.create(CareerMother.dto({ name: 'biology' }));
      const res = await services.careersService.findAll({ page: 1, limit: 10, name: 'bio' } as any);
      expect(res.length).toBeGreaterThanOrEqual(1);
    });
  });

  describe('Update/Remove', () => {
    it('updates with updatedAt', async () => {
      const created = await services.careersService.create(CareerMother.dto({ name: 'old' }));
      const res = await services.careersService.update(created!.id, { name: 'new' });
      expect(res?.name).toBe('new');
      expect(res?.updatedAt).toBeDefined();
    });
    it('hard deletes the record', async () => {
      const created = await services.careersService.create(CareerMother.dto({ name: 'to-del' }));
      const res = await services.careersService.remove(created!.id);
      expect(res?.id).toBe(created?.id);
      const inDb = await repositories.careerRepository.findOne({ where: { id: created!.id } });
      expect(inDb).toBeNull();
    });
    it('throws NotFound on missing id', async () => {
      await expect(services.careersService.update('missing', { name: 'x' })).rejects.toThrowError(NotFoundException);
      await expect(services.careersService.remove('missing')).rejects.toThrowError(NotFoundException);
    });
  });
});
