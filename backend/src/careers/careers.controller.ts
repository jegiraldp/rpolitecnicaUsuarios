import { Body, Controller, Delete, Get, Param, Patch, Post, Query } from '@nestjs/common';
import { CareersService } from './careers.service';
import { CreateCareerDto } from './dto/create-career.dto';
import { UpdateCareerDto } from './dto/update-career.dto';
import { FindCareersDto } from './dto/find-careers.dto';

@Controller('careers')
export class CareersController {
  constructor(private readonly careersService: CareersService) {}

  @Post()
  create(@Body() dto: CreateCareerDto) {
    return this.careersService.create(dto);
  }

  @Get()
  findAll(@Query() filters: FindCareersDto) {
    return this.careersService.findAll(filters);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.careersService.findOne(id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() dto: UpdateCareerDto) {
    return this.careersService.update(id, dto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.careersService.remove(id);
  }
}

