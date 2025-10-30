import { Controller, Get, Post, Body, Patch, Param, Delete, Query } from '@nestjs/common';
import { CollegesService } from './colleges.service';
import { CreateCollegeDto } from './dto/create-college.dto';
import { UpdateCollegeDto } from './dto/update-college.dto';
import { FindCollegesDto } from './dto/find-colleges.dto';

@Controller('colleges')
export class CollegesController {
  constructor(private readonly collegesService: CollegesService) {}

  @Post()
  create(@Body() createCollegeDto: CreateCollegeDto) {
    return this.collegesService.create(createCollegeDto);
  }

  @Get()
  findAll(@Query() filters: FindCollegesDto) {
    return this.collegesService.findAll(filters);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.collegesService.findOne(id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateCollegeDto: UpdateCollegeDto) {
    return this.collegesService.update(id, updateCollegeDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.collegesService.remove(id);
  }
}
