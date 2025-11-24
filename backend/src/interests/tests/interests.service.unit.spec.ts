import { Test, TestingModule } from '@nestjs/testing';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { getRepositoryToken } from '@nestjs/typeorm';
import { BadRequestException, NotFoundException } from '@nestjs/common';
import { InterestsService } from '../interests.service';
import { Interest } from '../entities/interest.entity';
import { mockInterestRepo } from './mocks/interest.mocks';
import { InterestMother } from './interests.mother';

describe('InterestsService - Unit', () => {
  let service: InterestsService;

  beforeAll(async () => {
    const module: TestingModule = await Test.createTestingModule({
      imports: [ConfigModule.forRoot({ envFilePath: "../.env.test" })],
      providers: [
        InterestsService,
        ConfigService,
        { provide: getRepositoryToken(Interest), useValue: mockInterestRepo },
      ],
    }).compile();

    service = module.get<InterestsService>(InterestsService);
  });

  describe('create', () => {
    it('creates an interest', async () => {
      mockInterestRepo.count.mockResolvedValue(0);
      mockInterestRepo.create.mockResolvedValue(InterestMother.dto());
      mockInterestRepo.save.mockResolvedValue(InterestMother.dto());
      const res = await service.create(InterestMother.dto());
      expect(res).toBeDefined();
      expect(res?.name).toBe(InterestMother.dto().name);
    });
    it('throws on duplicate name', async () => {
      mockInterestRepo.count.mockResolvedValue(1);
      await expect(service.create(InterestMother.dto())).rejects.toThrowError(BadRequestException);
    });
  });

  describe('find', () => {
    it('findAll paginated', async () => {
      const items = [ { id: 1, name: 'a' }, { id: 2, name: 'b' } ];
      mockInterestRepo.findAndCount.mockResolvedValue([items, items.length]);
      const res = await service.findAll({ page: 1, limit: 10 } as any);
      expect(res?.data).toHaveLength(2);
      expect(res?.meta.total).toBe(2);
    });
    it('findOne by id', async () => {
      const item = { id: 1, name: 'x' } as any;
      mockInterestRepo.findOne.mockResolvedValue(item);
      const res = await service.findOne(1);
      expect(res?.id).toBe(1);
    });
    it('filter by name contains', async () => {
      const items = [ { id: 1, name: 'interest name' } ];
      const qb = {
        where: jest.fn().mockReturnThis(),
        andWhere: jest.fn().mockReturnThis(),
        skip: jest.fn().mockReturnThis(),
        take: jest.fn().mockReturnThis(),
        getManyAndCount: jest.fn().mockResolvedValue([items, items.length]),
      };
      mockInterestRepo.createQueryBuilder.mockReturnValueOnce(qb as any);
      const res = await service.findAll({ page: 1, limit: 10, name: 'name' } as any);
      expect(res?.data).toHaveLength(1);
    });
  });

  describe('update/remove', () => {
    it('updates with updatedAt', async () => {
      mockInterestRepo.findOne.mockResolvedValue({ id: 1, name: 'old' });
      mockInterestRepo.count.mockResolvedValue(0);
      mockInterestRepo.merge.mockImplementation((e, dto) => ({ ...e, ...dto }));
      mockInterestRepo.save.mockImplementation(async (arg) => arg);
      const res = await service.update(1, { name: 'New' });
      expect(res?.name).toBe('New');
      expect(res?.updatedAt).toBeDefined();
    });
    it('throws NotFound on update missing', async () => {
      mockInterestRepo.findOne.mockResolvedValue(null);
      await expect(service.update(999, { name: 'x' })).rejects.toThrowError(NotFoundException);
    });
    it('throws BadRequest on duplicate name', async () => {
      mockInterestRepo.findOne.mockResolvedValue({ id: 1, name: 'old' });
      mockInterestRepo.count.mockResolvedValue(1);
      await expect(service.update(1, { name: 'dup' })).rejects.toThrowError(BadRequestException);
    });
    it('performs a hard delete', async () => {
      const existing = { id: 1, name: 'old' };
      mockInterestRepo.findOne.mockResolvedValue(existing);
      mockInterestRepo.delete.mockResolvedValue({ affected: 1 });
      const res = await service.remove(1);
      expect(mockInterestRepo.delete).toHaveBeenCalledWith(1);
      expect(res?.id).toBe(1);
    });
  });
});
