import { Body, Controller, Delete, Get, Param, Patch, Post, Query, ParseIntPipe } from '@nestjs/common';
import { CareersService } from './careers.service';
import { CreateCareerDto } from './dto/create-career.dto';
import { UpdateCareerDto } from './dto/update-career.dto';
import { FindCareersDto } from './dto/find-careers.dto';
import { Auth } from 'src/common/decorators/auth.decorator';

@Controller('careers')
export class CareersController {
  constructor(private readonly careersService: CareersService) {}

  @Auth()
  @Post()
  create(@Body() dto: CreateCareerDto) {
    return this.careersService.create(dto);
  }

  @Get()
  findAll(@Query() filters: FindCareersDto) {
    return this.careersService.findAll(filters);
  }

  @Get(':id')
  findOne(@Param('id', ParseIntPipe) id: number) {
    return this.careersService.findOne(id);
  }

  @Auth()
  @Patch(':id')
  update(@Param('id', ParseIntPipe) id: number, @Body() dto: UpdateCareerDto) {
    return this.careersService.update(id, dto);
  }

  @Auth()
  @Delete(':id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.careersService.remove(id);
  }
}
