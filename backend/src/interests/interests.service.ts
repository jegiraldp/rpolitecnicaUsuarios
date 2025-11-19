import { BadRequestException, Injectable, Logger, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, Not } from 'typeorm';
import { Interest } from './entities/interest.entity';
import { CreateInterestDto } from './dto/create-interest.dto';
import { UpdateInterestDto } from './dto/update-interest.dto';
import { FindInterestsDto } from './dto/find-interests.dto';
import { handleException } from '../common/handleErrors';
import { PaginatedResult } from '../common/dto/paginated-result.dto';

@Injectable()
export class InterestsService {
  private readonly logger = new Logger(InterestsService.name);
  constructor(
    @InjectRepository(Interest)
    private readonly interestRepository: Repository<Interest>,
  ) { }

  async create(createDto: CreateInterestDto) {
    try {
      const exists = await this.existsByName(createDto.name);
      if (exists) throw new BadRequestException('Ya existe un interés con ese nombre');
      const interest = this.interestRepository.create(createDto);
      return await this.interestRepository.save(interest);
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  async findAll(filters?: FindInterestsDto): Promise<PaginatedResult<Interest> | undefined | null> {
    try {
      const page = Math.max(1, filters?.page ?? 1);
      const limitRaw = filters?.limit ?? 10;
      const take = Math.min(Math.max(1, limitRaw), 100);
      const skip = (page - 1) * take;

      const where: any = {};
      if (filters?.id) where.id = String(filters.id);
      if (filters?.name) where.name = filters.name.toLowerCase();

      let data: Interest[] = [];
      let total = 0;

      if (filters?.name) {
        const qb = this.interestRepository
          .createQueryBuilder('interest')
          .where(where.id ? 'interest.id = :id' : '1=1', where.id ? { id: where.id } : {})
          .andWhere('LOWER(interest.name) LIKE :name', { name: `%${filters.name.toLowerCase()}%` })
          .skip(skip)
          .take(take);

        const [items, count] = await qb.getManyAndCount();
        data = items;
        total = count;
      } else {
        const [items, count] = await this.interestRepository.findAndCount({ where, skip, take });
        data = items;
        total = count;
      }

      const totalPages = Math.max(1, Math.ceil(total / take));

      return {
        data,
        meta: {
          total,
          page,
          limit: take,
          totalPages,
        },
      };
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  async findOne(id: string | number): Promise<Interest | null | undefined> {
    try {
      const idStr = String(id);
      return await this.interestRepository.findOne({ where: { id: idStr } });
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  async update(id: string, updateDto: UpdateInterestDto): Promise<Interest | undefined> {
    try {
      const existing = await this.interestRepository.findOne({ where: { id } });
      if (!existing) throw new NotFoundException('Interés no encontrado');

      if (updateDto.name) {
        const dup = await this.existsByName(updateDto.name, id);
        if (dup) throw new BadRequestException('Ya existe un interés con ese nombre');
      }

      const toSave = this.interestRepository.merge(existing, { ...updateDto, updatedAt: new Date() as any });
      return await this.interestRepository.save(toSave);
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  async remove(id: string): Promise<Interest | undefined> {
    try {
      const existing = await this.interestRepository.findOne({ where: { id } });
      if (!existing) throw new NotFoundException('Interés no encontrado');
      return await this.interestRepository.remove(existing);
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  private async existsByName(name: string, excludeId?: string): Promise<boolean> {
    const where: any = { name: name.toLowerCase() };
    if (excludeId) where.id = Not(excludeId);
    const count = await this.interestRepository.count({ where });
    return count > 0;
  }
}
