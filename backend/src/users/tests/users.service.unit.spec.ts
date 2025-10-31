import { Test, TestingModule } from '@nestjs/testing';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { getRepositoryToken } from '@nestjs/typeorm';
import { BadRequestException, NotFoundException } from '@nestjs/common';
import { UsersService } from '../users.service';
import { User } from '../entities/user.entity';
import { College } from '../../colleges/entities/college.entity';
import { Career } from '../../careers/entities/career.entity';
import { Interest } from '../../interests/entities/interest.entity';
import { mockUserRepo, mockCollegeRepo, mockCareerRepo, mockInterestRepo } from './mocks/user.mocks';
import { UserMother } from './users.mother';

describe('UsersService - Unit', () => {
  let service: UsersService;

  beforeAll(async () => {
    const module: TestingModule = await Test.createTestingModule({
      imports: [ConfigModule.forRoot({ envFilePath: "../.env.test" })],
      providers: [
        UsersService,
        ConfigService,
        { provide: getRepositoryToken(User), useValue: mockUserRepo },
        { provide: getRepositoryToken(College), useValue: mockCollegeRepo },
        { provide: getRepositoryToken(Career), useValue: mockCareerRepo },
        { provide: getRepositoryToken(Interest), useValue: mockInterestRepo },
      ],
    }).compile();

    service = module.get<UsersService>(UsersService);
  });

  describe('create', () => {
    it('creates a user', async () => {
      mockUserRepo.count.mockResolvedValue(0);
      mockUserRepo.create.mockImplementation((dto: any) => dto);
      mockUserRepo.save.mockImplementation(async (arg: any) => arg);

      const res = await service.create(UserMother.dto());
      expect(res).toBeDefined();
      expect(res?.email).toBe(UserMother.dto().email);
    });
    it('rejects duplicate username/email', async () => {
      mockUserRepo.count.mockResolvedValueOnce(1); // username exists
      await expect(service.create(UserMother.dto())).rejects.toThrowError(BadRequestException);
    });
  });

  describe('find', () => {
    it('findAll with filters', async () => {
      const items = [ { id: 'u1', username: 'john', email: 'john@example.com' } ];
      const qb = mockUserRepo.createQueryBuilder();
      qb.getMany.mockResolvedValue(items);
      const res = await service.findAll({ page: 1, limit: 10, username: 'jo' } as any);
      expect(Array.isArray(res)).toBe(true);
      expect(res).toHaveLength(1);
    });
    it('findOne by id', async () => {
      const item = { id: 'uid', username: 'john' } as any;
      mockUserRepo.findOne.mockResolvedValue(item);
      const res = await service.findOne('uid');
      expect(res?.id).toBe('uid');
    });
  });

  describe('update/deactivate', () => {
    it('updates and sets updatedAt', async () => {
      mockUserRepo.findOne.mockResolvedValueOnce({ id: 'uid', username: 'old', email: 'x@x.com', isActive: true });
      mockUserRepo.count.mockResolvedValue(0);
      mockUserRepo.merge.mockImplementation((e: any, dto: any) => ({ ...e, ...dto }));
      mockUserRepo.save.mockImplementation(async (arg: any) => arg);
      const res = await service.update('uid', { username: 'new' });
      expect(res?.username).toBe('new');
      expect(res?.updatedAt).toBeDefined();
    });
    it('throws NotFound on update missing', async () => {
      mockUserRepo.findOne.mockResolvedValueOnce(null);
      await expect(service.update('missing', { username: 'x' })).rejects.toThrowError(NotFoundException);
    });
    it('deactivates user', async () => {
      mockUserRepo.findOne.mockResolvedValueOnce({ id: 'uid', isActive: true });
      mockUserRepo.save.mockImplementation(async (arg: any) => arg);
      const res = await service.deactivate('uid');
      expect(res?.isActive).toBe(false);
    });
  });
});

