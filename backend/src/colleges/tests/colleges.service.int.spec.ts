import { Test, TestingModule } from '@nestjs/testing';
import { TestHelpers, TestRepositories, TestServices } from '../../common/tests/test-helpers';
import { TestDatabaseManager } from '../../common/tests/test-database';
import { SeedService } from '../../common/seed/seedService';
import { CollegeMother } from './colleges.mother';
import { BadRequestException } from '@nestjs/common';

describe('CollegesService', () => {
  let services: TestServices
  let repositories: TestRepositories
  let module: TestingModule;

  beforeAll(async () => {
    module = await TestDatabaseManager.initializeInt();
    services = TestHelpers.getServices(module) 
    repositories = TestHelpers.getRepositories(module)
  })

  afterAll(async () => {
    await TestDatabaseManager.cleanUp();
  });

  afterEach(async () => {
    await TestHelpers.setupTestData(module.get<SeedService>(SeedService));
  });

  afterAll(async () => {
    await module.close();
  });

  describe('Create colleges', () => { 
    it('should create a college', async () => {
      const collegeDTO = CollegeMother.dto();
      const college = await services.collegeServices.create(collegeDTO) 
      expect(college).toBeDefined()
      expect(college?.id).toBeDefined()
      expect(college?.name).toBe(collegeDTO.name.toLocaleLowerCase())
    })

    it('should throw an error if the college name already exists', async () => {
      const collegeDTO = CollegeMother.dto();
      await services.collegeServices.create(collegeDTO)
      await expect(services.collegeServices.create(CollegeMother.dto())).rejects.toThrowError(BadRequestException);
   })
   })

   describe('Find colleges', () => {
     it('should return all colleges', async () => {
       const list = await services.collegeServices.findAll({ page: 1, limit: 10 } as any);
       expect(list).toBeDefined();
       expect(Array.isArray(list)).toBe(true);
       // seeded with 5 by SeedService
       expect(list?.length).toBe(5);
     });

     it('should return one college by id', async () => {
       const anyCollege = (await repositories.collegeRepository.find())[0];
       const found = await services.collegeServices.findOne(anyCollege.id);
       expect(found).toBeDefined();
       expect(found?.id).toBe(anyCollege.id);
       expect(found?.name).toBe(anyCollege.name);
     });
   })

});
