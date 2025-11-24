import { Test, TestingModule } from '@nestjs/testing';
import { TestDatabaseManager } from '../../common/tests/test-database';
import { TestHelpers, TestRepositories, TestServices } from '../../common/tests/test-helpers';
import { BadRequestException, NotFoundException } from '@nestjs/common';
import { UserMother } from './users.mother';
import { CollegeMother } from '../../colleges/tests/colleges.mother';
import { InterestMother } from '../../interests/tests/interests.mother';
import { CareerMother } from '../../careers/tests/careers.mother';
import { UsersService } from '../users.service';
import { CollegesService } from '../../colleges/colleges.service';
import { InterestsService } from '../../interests/interests.service';
import { CareersService } from '../../careers/careers.service';
import { SeedService } from 'src/common/tests/seed/seedService';

describe('UsersService - INT', () => {
  let services: TestServices;
  let repositories: TestRepositories;
  let module: TestingModule;
  let userMother: UserMother;
  let collegeMother: CollegeMother;
  let interestMother: InterestMother;
  let careerMother: CareerMother;

  beforeAll(async () => {
    module = await TestDatabaseManager.initializeInt();
    services = TestHelpers.getServices(module);
    repositories = TestHelpers.getRepositories(module);
    userMother = new UserMother(module.get<UsersService>(UsersService));
    collegeMother = new CollegeMother(module.get<CollegesService>(CollegesService));
    interestMother = new InterestMother(module.get<InterestsService>(InterestsService));
    careerMother = new CareerMother(module.get<CareersService>(CareersService));
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
    it('creates a user with relations', async () => {
      const [college] = await collegeMother.createMany(1, { name: 'engineering' } as any);
      const [career] = await careerMother.createMany(1, { name: 'software' } as any);
      const [interest] = await interestMother.createMany(1, { name: 'ai' } as any);

      const res = await services.usersService.create(UserMother.dto({
        username: 'john',
        email: 'john@example.com',
        collegeId: college!.id,
        careerId: career!.id,
        interestIds: [interest!.id],
      }));
      expect(res).toBeDefined();
      expect(res?.id).toBeDefined();
      expect(res?.college?.id).toBe(college!.id);
      expect(res?.career?.id).toBe(career!.id);
      expect(res?.interests?.length).toBe(1);
    });

    it('rejects duplicate username', async () => {
      await services.usersService.create(UserMother.dto({ username: 'dup', email: 'a@a.com' }));
      await expect(services.usersService.create(UserMother.dto({ username: 'dup', email: 'b@b.com' }))).rejects.toThrowError(BadRequestException);
    });
  });

  describe('Find', () => {
    it('findAll paginated and filtered by username', async () => {
      await services.usersService.create(UserMother.dto({ username: 'alice', email: 'alice@example.com' }));
      await services.usersService.create(UserMother.dto({ username: 'bob', email: 'bob@example.com' }));
      const res = await services.usersService.findAll({ page: 1, limit: 1, username: 'a' } as any);
      expect(res?.data.length).toBe(1);
      expect(res?.meta.total).toBeGreaterThanOrEqual(1);
    });
    it('findOne by id', async () => {
      const created = await services.usersService.create(UserMother.dto({ username: 'cid', email: 'cid@example.com' }));
      const res = await services.usersService.findOne(created!.id);
      expect(res?.id).toBe(created!.id);
    });
  });

  describe('Update/Deactivate', () => {
    it('updates username and sets updatedAt', async () => {
      const created = await services.usersService.create(UserMother.dto({ username: 'old', email: 'old@example.com' }));
      const res = await services.usersService.update(created!.id, { username: 'new' });
      expect(res?.username).toBe('new');
      expect(res?.updatedAt).toBeDefined();
    });
    it('updates relations', async () => {
      const created = await services.usersService.create(UserMother.dto({ username: 'rel', email: 'rel@example.com' }));
      const [i1] = await interestMother.createMany(1, { name: 'math' } as any);
      const res = await services.usersService.update(created!.id, { interestIds: [i1!.id] });
      expect(res?.interests?.length).toBe(1);
    });
    it('deactivates user', async () => {
      const created = await services.usersService.create(UserMother.dto({ username: 'act', email: 'act@example.com' }));
      const res = await services.usersService.deactivate(created!.id);
      expect(res?.isActive).toBe(false);
    });
    it('throws NotFound on missing id', async () => {
      await expect(services.usersService.update(999999, { username: 'x' })).rejects.toThrowError(NotFoundException);
      await expect(services.usersService.deactivate(999999)).rejects.toThrowError(NotFoundException);
    });
  });
});
