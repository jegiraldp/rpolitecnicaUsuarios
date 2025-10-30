import { BadRequestException, Injectable, Logger } from '@nestjs/common';
import { CreateCollegeDto } from './dto/create-college.dto';
import { UpdateCollegeDto } from './dto/update-college.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { College } from './entities/college.entity';
import { Not, Repository } from 'typeorm';
import { handleException } from '../common/handleErrors';
import { PaginationDto } from '../common/dto/pagination.dto';

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

  async findAll(pagination: PaginationDto): Promise<College[]> {
    try {
      const page = Math.max(1, pagination?.page ?? 1);
      const limitRaw = pagination?.limit ?? 10;
      const take = Math.min(Math.max(1, limitRaw), 100);
      const skip = (page - 1) * take;
      return await this.collegeRepository.find({ skip, take });
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
