import { Test, TestingModule } from '@nestjs/testing';
import { TestHelpers, TestRepositories, TestServices } from '../../common/tests/test-helpers';
import { TestDatabaseManager } from '../../common/tests/test-database';
import { SeedService } from '../../common/seed/seedService';
import { CollegeMother } from './colleges.mother';
import { BadRequestException, NotFoundException } from '@nestjs/common';

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

     it('should filter colleges by name (contains)', async () => {
       const list = await services.collegeServices.findAll({ page: 1, limit: 10, name: 'college-1' } as any);
       expect(list).toBeDefined();
       expect(Array.isArray(list)).toBe(true);
       expect(list?.length).toBe(1);
       expect(list[0].name).toBe('college-1');
     });

     it('should filter colleges by id (exact)', async () => {
       const anyCollege2 = (await repositories.collegeRepository.find())[0];
       const list = await services.collegeServices.findAll({ page: 1, limit: 10, id: anyCollege2.id } as any);
       expect(list).toHaveLength(1);
       expect(list[0].id).toBe(anyCollege2.id);
     });
   })

   describe('Update colleges', () => {
     it('should update a college name', async () => {
       const anyCollege = (await repositories.collegeRepository.find())[0];
       const updated = await services.collegeServices.update(anyCollege.id, { name: 'Updated Name' });
       expect(updated).toBeDefined();
       expect(updated?.id).toBe(anyCollege.id);
       expect(updated?.name).toBe('updated name');
     });

     it('should throw BadRequest when updating to an existing name', async () => {
       const list = await repositories.collegeRepository.find();
       const a = list[0];
       const b = list[1];
       await expect(services.collegeServices.update(a.id, { name: b.name })).rejects.toThrowError(BadRequestException);
     });

     it('should throw NotFound when college does not exist', async () => {
       await expect(services.collegeServices.update('non-existing-id', { name: 'something' })).rejects.toThrowError(NotFoundException);
     });
   })

});
