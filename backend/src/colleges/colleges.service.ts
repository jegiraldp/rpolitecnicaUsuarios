import { BadRequestException, Injectable, Logger } from '@nestjs/common';
import { CreateCollegeDto } from './dto/create-college.dto';
import { UpdateCollegeDto } from './dto/update-college.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { College } from './entities/college.entity';
import { Not, Repository } from 'typeorm';
import { handleException } from '../common/handleErrors';
import { FindCollegesDto } from './dto/find-colleges.dto';

@Injectable()
export class CollegesService {
  private readonly logger = new Logger(CollegesService.name)
  constructor(
    @InjectRepository(College)
    private readonly collegeRepository: Repository<College>,
  ) { }
  async create(createCollegeDto: CreateCollegeDto) {
    try {
      const exists = await this.existsByName(createCollegeDto.name);
      if (exists) {
        throw new BadRequestException('College with this name already exists');
      }
      const college = this.collegeRepository.create(createCollegeDto);
      return this.collegeRepository.save(college);
    } catch (error) {
      handleException(error, this.logger)
    }
  }

  async findAll(filters?: FindCollegesDto): Promise<College[] | undefined> {
    try {
      const page = Math.max(1, filters?.page ?? 1);
      const limitRaw = filters?.limit ?? 10;
      const take = Math.min(Math.max(1, limitRaw), 100);
      const skip = (page - 1) * take;
      const where: any = {};
      if (filters?.id) where.id = String(filters.id);
      if (filters?.name) where.name = filters.name.toLowerCase();

      if (filters?.name) {
        return await this.collegeRepository
          .createQueryBuilder('college')
          .where(where.id ? 'college.id = :id' : '1=1', where.id ? { id: where.id } : {})
          .andWhere('LOWER(college.name) LIKE :name', { name: `%${filters.name.toLowerCase()}%` })
          .skip(skip)
          .take(take)
          .getMany();
      }

      return await this.collegeRepository.find({ where, skip, take });
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  async findOne(id: string | number): Promise<College | null | undefined> {
    try {
      const idStr = String(id);
      return await this.collegeRepository.findOne({ where: { id: idStr } });
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  // findAllBy merged into findAll

  update(id: number, updateCollegeDto: UpdateCollegeDto) {
    return `This action updates a #${id} college`;
  }

  remove(id: number) {
    return `This action removes a #${id} college`;
  }

  private async existsByName(name: string, excludeId?: number): Promise<boolean> {
    const where: any = { name }
    if (excludeId) {
      where.id = Not(excludeId)
    }
    const count = await this.collegeRepository.count({ where });
    return count > 0;
  }
}
