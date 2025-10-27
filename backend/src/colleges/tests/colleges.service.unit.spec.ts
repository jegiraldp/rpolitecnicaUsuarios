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
})
