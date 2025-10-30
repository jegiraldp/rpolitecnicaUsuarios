import { Test, TestingModule } from '@nestjs/testing';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { getRepositoryToken } from '@nestjs/typeorm';
import { BadRequestException, NotFoundException } from '@nestjs/common';
import { CareersService } from '../careers.service';
import { Career } from '../entities/career.entity';
import { mockCareerRepo } from './mocks/career.mocks.ts';
import { CareerMother } from './careers.mother';

describe('CareersService - Unit', () => {
  let service: CareersService;

  beforeAll(async () => {
    const module: TestingModule = await Test.createTestingModule({
      imports: [ConfigModule.forRoot({ envFilePath: "../.env.test" })],
      providers: [
        CareersService,
        ConfigService,
        { provide: getRepositoryToken(Career), useValue: mockCareerRepo },
      ],
    }).compile();

    service = module.get<CareersService>(CareersService);
  });

  describe('create', () => {
    it('creates a career', async () => {
      mockCareerRepo.count.mockResolvedValue(0);
      mockCareerRepo.create.mockResolvedValue(CareerMother.dto());
      mockCareerRepo.save.mockResolvedValue(CareerMother.dto());
      const res = await service.create(CareerMother.dto());
      expect(res).toBeDefined();
      expect(res?.name).toBe(CareerMother.dto().name);
    });
    it('throws on duplicate name', async () => {
      mockCareerRepo.count.mockResolvedValue(1);
      await expect(service.create(CareerMother.dto())).rejects.toThrowError(BadRequestException);
    });
  });

  describe('find', () => {
    it('findAll paginated', async () => {
      const items = [ { id: 'c1', name: 'a' }, { id: 'c2', name: 'b' } ];
      mockCareerRepo.find.mockResolvedValue(items);
      const res = await service.findAll({ page: 1, limit: 10 } as any);
      expect(Array.isArray(res)).toBe(true);
      expect(res).toHaveLength(2);
    });
    it('findOne by id', async () => {
      const item = { id: 'cid', name: 'x' } as any;
      mockCareerRepo.findOne.mockResolvedValue(item);
      const res = await service.findOne('cid');
      expect(res?.id).toBe('cid');
    });
    it('filter by name contains', async () => {
      const items = [ { id: 'c1', name: 'career name' } ];
      const qb = mockCareerRepo.createQueryBuilder();
      qb.getMany.mockResolvedValue(items);
      const res = await service.findAll({ page: 1, limit: 10, name: 'name' } as any);
      expect(res).toHaveLength(1);
    });
  });

  describe('update/remove', () => {
    it('updates with updatedAt', async () => {
      mockCareerRepo.findOne.mockResolvedValue({ id: 'cid', name: 'old' });
      mockCareerRepo.count.mockResolvedValue(0);
      mockCareerRepo.merge.mockImplementation((e, dto) => ({ ...e, ...dto }));
      mockCareerRepo.save.mockImplementation(async (arg) => arg);
      const res = await service.update('cid', { name: 'New' });
      expect(res?.name).toBe('New');
      expect(res?.updatedAt).toBeDefined();
    });
    it('throws NotFound on update missing', async () => {
      mockCareerRepo.findOne.mockResolvedValue(null);
      await expect(service.update('missing', { name: 'x' })).rejects.toThrowError(NotFoundException);
    });
    it('throws BadRequest on duplicate name', async () => {
      mockCareerRepo.findOne.mockResolvedValue({ id: 'cid', name: 'old' });
      mockCareerRepo.count.mockResolvedValue(1);
      await expect(service.update('cid', { name: 'dup' })).rejects.toThrowError(BadRequestException);
    });
    it('soft deletes by setting deletedAt', async () => {
      mockCareerRepo.findOne.mockResolvedValue({ id: 'cid', name: 'old' });
      mockCareerRepo.save.mockImplementation(async (arg) => arg);
      const res = await service.remove('cid');
      expect(res?.deletedAt).toBeDefined();
    });
  });
});

