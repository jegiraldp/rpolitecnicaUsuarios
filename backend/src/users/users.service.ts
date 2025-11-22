import { BadRequestException, Injectable, Logger, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { In, Not, Repository } from 'typeorm';
import { User } from './entities/user.entity';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { FindUsersDto } from './dto/find-users.dto';
import { handleException } from '../common/handleErrors';
import { College } from '../colleges/entities/college.entity';
import { Career } from '../careers/entities/career.entity';
import { Interest } from '../interests/entities/interest.entity';
import { PaginatedResult } from '../common/dto/paginated-result.dto';

@Injectable()
export class UsersService {
  private readonly logger = new Logger(UsersService.name);
  constructor(
    @InjectRepository(User)
    private readonly userRepo: Repository<User>,
    @InjectRepository(College)
    private readonly collegeRepo: Repository<College>,
    @InjectRepository(Career)
    private readonly careerRepo: Repository<Career>,
    @InjectRepository(Interest)
    private readonly interestRepo: Repository<Interest>,
  ) {}

  private async usernameExists(username: string, excludeId?: string) {
    const where: any = { username: username.toLowerCase() };
    if (excludeId) where.id = Not(excludeId);
    const count = await this.userRepo.count({ where });
    return count > 0;
  }
  private async emailExists(email: string, excludeId?: string) {
    const where: any = { email: email.toLowerCase() };
    if (excludeId) where.id = Not(excludeId);
    const count = await this.userRepo.count({ where });
    return count > 0;
  }

  async create(dto: CreateUserDto) {
    try {
      if (await this.usernameExists(dto.username)) throw new BadRequestException('El usuario ya existe');
      if (await this.emailExists(dto.email)) throw new BadRequestException('El correo ya existe');

      const user = this.userRepo.create({
        username: dto.username,
        email: dto.email,
        country: dto.country ?? null,
        isActive: dto.isActive ?? true,
      });

      if (dto.collegeId) user.college = await this.collegeRepo.findOne({ where: { id: dto.collegeId } }) || null;
      if (dto.careerId) user.career = await this.careerRepo.findOne({ where: { id: dto.careerId } }) || null;
      if (dto.interestIds?.length) user.interests = await this.interestRepo.find({ where: { id: In(dto.interestIds) } });

      return await this.userRepo.save(user);
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  async findAll(filters?: FindUsersDto): Promise<PaginatedResult<User> | undefined> {
    try {
      const page = Math.max(1, filters?.page ?? 1);
      const limitRaw = filters?.limit ?? 10;
      const take = Math.min(Math.max(1, limitRaw), 100);
      const skip = (page - 1) * take;

      const qb = this.userRepo
        .createQueryBuilder('user')
        .addSelect(['user.isActive'])
        .leftJoinAndSelect('user.college', 'college')
        .leftJoinAndSelect('user.career', 'career')
        .leftJoinAndSelect('user.interests', 'interest');

      if (filters?.id) qb.andWhere('user.id = :id', { id: filters.id });
      if (filters?.username) qb.andWhere('LOWER(user.username) LIKE :username', { username: `%${filters.username.toLowerCase()}%` });
      if (filters?.email) qb.andWhere('LOWER(user.email) LIKE :email', { email: `%${filters.email.toLowerCase()}%` });
      if (filters?.country) qb.andWhere('LOWER(user.country) LIKE :country', { country: `%${filters.country.toLowerCase()}%` });
      if (typeof filters?.isActive === 'boolean') qb.andWhere('user.is_active = :isActive', { isActive: filters.isActive });
      if (filters?.collegeId) qb.andWhere('college.id = :collegeId', { collegeId: filters.collegeId });
      if (filters?.careerId) qb.andWhere('career.id = :careerId', { careerId: filters.careerId });
      if (filters?.interestId) qb.andWhere('interest.id = :interestId', { interestId: filters.interestId });

      const [items, total] = await qb.skip(skip).take(take).getManyAndCount();

      const totalPages = Math.max(1, Math.ceil(total / take));

      return {
        data: items,
        meta: {
          total,
          page,
          limit: take,
          totalPages,
        },
      };
    } catch (error) {
      console.log(error
        
      )
      handleException(error, this.logger);
    }
  }

  async findOne(id: string | number): Promise<User | null | undefined> {
    try {
      const idStr = String(id);
      return await this.userRepo.findOne({ where: { id: idStr }, relations: ['college', 'career', 'interests'] });
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  async update(id: string, dto: UpdateUserDto): Promise<User | undefined> {
    try {
      const existing = await this.userRepo.findOne({ where: { id }, relations: ['interests', 'college', 'career'] });
      if (!existing) throw new NotFoundException('Usuario no encontrado');

      if (dto.username && (await this.usernameExists(dto.username, id))) throw new BadRequestException('El usuario ya existe');
      if (dto.email && (await this.emailExists(dto.email, id))) throw new BadRequestException('El correo ya existe');

      if (dto.collegeId !== undefined) existing.college = dto.collegeId ? await this.collegeRepo.findOne({ where: { id: dto.collegeId } }) : null;
      if (dto.careerId !== undefined) existing.career = dto.careerId ? await this.careerRepo.findOne({ where: { id: dto.careerId } }) : null;
      if (dto.interestIds !== undefined) existing.interests = dto.interestIds?.length ? await this.interestRepo.find({ where: { id: In(dto.interestIds) } }) : [];

      const toSave = this.userRepo.merge(existing, {
        username: dto.username ?? existing.username,
        email: dto.email ?? existing.email,
        country: dto.country ?? existing.country,
        isActive: typeof dto.isActive === 'boolean' ? dto.isActive : existing.isActive,
        updatedAt: new Date() as any,
      });
      return await this.userRepo.save(toSave);
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  async deactivate(id: string): Promise<User | undefined> {
    try {
      const existing = await this.userRepo.findOne({ where: { id } });
      if (!existing) throw new NotFoundException('Usuario no encontrado');
      existing.isActive = false;
      existing.updatedAt = new Date() as any;
      return await this.userRepo.save(existing);
    } catch (error) {
      handleException(error, this.logger);
    }
  }
}
