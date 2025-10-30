import { Test, TestingModule } from '@nestjs/testing';
import { CollegesService } from '../colleges.service';
import { College } from '../entities/college.entity';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { getRepositoryToken } from '@nestjs/typeorm';
import { mockCollegeRepo } from './mocks/college.mocks';
import { CollegeMother } from './colleges.mother';
import { BadRequestException } from '@nestjs/common';

describe('CollegesService', () => {
  let collegeService: CollegesService;

  beforeAll(async () => {
    const module: TestingModule = await Test.createTestingModule({
      imports: [ConfigModule.forRoot({
        envFilePath: "../.env.test"
      }),],
      providers: [
        CollegesService,
        ConfigService,

        {
          provide: getRepositoryToken(College),
          useValue: mockCollegeRepo
        }
      ]
    }).compile()

    collegeService = module.get<CollegesService>(CollegesService)

  })

  describe('Create College', () => {
    it('should create a college', async () => {
      mockCollegeRepo.count.mockResolvedValue(0);
      mockCollegeRepo.create.mockResolvedValue(CollegeMother.dto());
      mockCollegeRepo.save.mockResolvedValue(CollegeMother.dto());

      const response = await collegeService.create(CollegeMother.dto());

      expect(response).toBeDefined();
      expect(response?.name).toBe(CollegeMother.dto().name);

    })

    it('should throw an error if the college name already exists', async () => {
      mockCollegeRepo.count.mockResolvedValue(1);
      mockCollegeRepo.create.mockResolvedValue(CollegeMother.dto());
      mockCollegeRepo.save.mockResolvedValue(CollegeMother.dto());

      await expect(collegeService.create(CollegeMother.dto())).rejects.toThrowError(BadRequestException);
    })
  })

  describe('Find colleges', () => {
    it('should return all colleges', async () => {
      const items = [
        { id: 'id-1', name: 'eng college' },
        { id: 'id-2', name: 'arts college' },
      ];
      mockCollegeRepo.find.mockResolvedValue(items);

      const response = await collegeService.findAll({ page: 1, limit: 10 } as any);

      expect(response).toBeDefined();
      expect(Array.isArray(response)).toBe(true);
      expect(response).toHaveLength(2);
      expect(response[0].name).toBe(items[0].name);
    })

    it('should return a college by id', async () => {
      const item = { id: 'uuid-123', name: 'eng college' } as unknown as College;
      mockCollegeRepo.findOne.mockResolvedValue(item);

      const response = await collegeService.findOne('uuid-123');

      expect(response).toBeDefined();
      expect(response?.id).toBe('uuid-123');
      expect(response?.name).toBe('eng college');
    })

    it('should filter colleges by name (contains)', async () => {
      const items = [
        { id: 'id-1', name: 'engineering college' },
      ];

      const qb = mockCollegeRepo.createQueryBuilder();
      qb.getMany.mockResolvedValue(items);

      const response = await collegeService.findAll({ page: 1, limit: 10, name: 'engineer' } as any);
      expect(response).toHaveLength(1);
      expect(response[0].name).toBe('engineering college');
    });

    it('should filter colleges by id (exact)', async () => {
      const items = [
        { id: 'uuid-1', name: 'arts college' },
      ];
      mockCollegeRepo.find.mockResolvedValue(items);

      const response = await collegeService.findAll({ page: 1, limit: 10, id: 'uuid-1' } as any);
      expect(response).toHaveLength(1);
      expect(response[0].id).toBe('uuid-1');
    });
  })
})
