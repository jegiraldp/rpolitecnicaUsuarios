import { BadRequestException, Injectable, Logger, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, Not } from 'typeorm';
import { Career } from './entities/career.entity';
import { CreateCareerDto } from './dto/create-career.dto';
import { UpdateCareerDto } from './dto/update-career.dto';
import { FindCareersDto } from './dto/find-careers.dto';
import { handleException } from '../common/handleErrors';
import { PaginatedResult } from '../common/dto/paginated-result.dto';

@Injectable()
export class CareersService {
  private readonly logger = new Logger(CareersService.name);
  constructor(
    @InjectRepository(Career)
    private readonly careerRepository: Repository<Career>,
  ) {}

  async create(createDto: CreateCareerDto) {
    try {
      const exists = await this.existsByName(createDto.name);
      if (exists) throw new BadRequestException('Ya existe una carrera con ese nombre');
      const career = this.careerRepository.create(createDto);
      return await this.careerRepository.save(career);
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  async findAll(filters?: FindCareersDto): Promise<PaginatedResult<Career> | undefined | null> {
    try {
      const page = Math.max(1, filters?.page ?? 1);
      const limitRaw = filters?.limit ?? 10;
      const take = Math.min(Math.max(1, limitRaw), 100);
      const skip = (page - 1) * take;

      const where: any = {};
      if (filters?.id) where.id = String(filters.id);
      if (filters?.name) where.name = filters.name.toLowerCase();

      let data: Career[] = [];
      let total = 0;

      if (filters?.name) {
        const qb = this.careerRepository
          .createQueryBuilder('career')
          .where(where.id ? 'career.id = :id' : '1=1', where.id ? { id: where.id } : {})
          .andWhere('LOWER(career.name) LIKE :name', { name: `%${filters.name.toLowerCase()}%` })
          .skip(skip)
          .take(take);

        const [items, count] = await qb.getManyAndCount();
        data = items;
        total = count;
      } else {
        const [items, count] = await this.careerRepository.findAndCount({ where, skip, take });
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

  async findOne(id: string | number): Promise<Career | null | undefined> {
    try {
      const idStr = String(id);
      return await this.careerRepository.findOne({ where: { id: idStr } });
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  async update(id: string, updateDto: UpdateCareerDto): Promise<Career | undefined> {
    try {
      const existing = await this.careerRepository.findOne({ where: { id } });
      if (!existing) throw new NotFoundException('Carrera no encontrada');

      if (updateDto.name) {
        const dup = await this.existsByName(updateDto.name, id);
        if (dup) throw new BadRequestException('Ya existe una carrera con ese nombre');
      }

      const toSave = this.careerRepository.merge(existing, { ...updateDto, updatedAt: new Date() as any });
      return await this.careerRepository.save(toSave);
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  async remove(id: string): Promise<Career | undefined> {
    try {
      const existing = await this.careerRepository.findOne({ where: { id } });
      if (!existing) throw new NotFoundException('Carrera no encontrada');
      return await this.careerRepository.remove(existing);
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  private async existsByName(name: string, excludeId?: string): Promise<boolean> {
    const where: any = { name: name.toLowerCase() };
    if (excludeId) where.id = Not(excludeId);
    const count = await this.careerRepository.count({ where });
    return count > 0;
  }
}
