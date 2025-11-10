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
      const items = [ { id: 'i1', name: 'a' }, { id: 'i2', name: 'b' } ];
      mockInterestRepo.find.mockResolvedValue(items);
      const res = await service.findAll({ page: 1, limit: 10 } as any);
      expect(Array.isArray(res)).toBe(true);
      expect(res).toHaveLength(2);
    });
    it('findOne by id', async () => {
      const item = { id: 'iid', name: 'x' } as any;
      mockInterestRepo.findOne.mockResolvedValue(item);
      const res = await service.findOne('iid');
      expect(res?.id).toBe('iid');
    });
    it('filter by name contains', async () => {
      const items = [ { id: 'i1', name: 'interest name' } ];
      const qb = {
        where: jest.fn().mockReturnThis(),
        andWhere: jest.fn().mockReturnThis(),
        skip: jest.fn().mockReturnThis(),
        take: jest.fn().mockReturnThis(),
        getMany: jest.fn().mockResolvedValue(items),
      };
      mockInterestRepo.createQueryBuilder.mockReturnValueOnce(qb as any);
      const res = await service.findAll({ page: 1, limit: 10, name: 'name' } as any);
      expect(res).toHaveLength(1);
    });
  });

  describe('update/remove', () => {
    it('updates with updatedAt', async () => {
      mockInterestRepo.findOne.mockResolvedValue({ id: 'iid', name: 'old' });
      mockInterestRepo.count.mockResolvedValue(0);
      mockInterestRepo.merge.mockImplementation((e, dto) => ({ ...e, ...dto }));
      mockInterestRepo.save.mockImplementation(async (arg) => arg);
      const res = await service.update('iid', { name: 'New' });
      expect(res?.name).toBe('New');
      expect(res?.updatedAt).toBeDefined();
    });
    it('throws NotFound on update missing', async () => {
      mockInterestRepo.findOne.mockResolvedValue(null);
      await expect(service.update('missing', { name: 'x' })).rejects.toThrowError(NotFoundException);
    });
    it('throws BadRequest on duplicate name', async () => {
      mockInterestRepo.findOne.mockResolvedValue({ id: 'iid', name: 'old' });
      mockInterestRepo.count.mockResolvedValue(1);
      await expect(service.update('iid', { name: 'dup' })).rejects.toThrowError(BadRequestException);
    });
    it('performs a hard delete', async () => {
      const existing = { id: 'iid', name: 'old' };
      mockInterestRepo.findOne.mockResolvedValue(existing);
      mockInterestRepo.remove.mockResolvedValue(existing);
      const res = await service.remove('iid');
      expect(mockInterestRepo.remove).toHaveBeenCalledWith(existing);
      expect(res?.id).toBe('iid');
    });
  });
});
