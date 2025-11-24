import { Controller, Get, Post, Body, Patch, Param, Delete, Query, ParseIntPipe } from '@nestjs/common';
import { CollegesService } from './colleges.service';
import { CreateCollegeDto } from './dto/create-college.dto';
import { UpdateCollegeDto } from './dto/update-college.dto';
import { FindCollegesDto } from './dto/find-colleges.dto';
import { Auth } from 'src/common/decorators/auth.decorator';

@Controller('colleges')
export class CollegesController {
  constructor(private readonly collegesService: CollegesService) {}

  @Auth()
  @Post()
  create(@Body() createCollegeDto: CreateCollegeDto) {
    return this.collegesService.create(createCollegeDto);
  }

  @Get()
  findAll(@Query() filters: FindCollegesDto) {
    return this.collegesService.findAll(filters);
  }

  @Get(':id')
  findOne(@Param('id', ParseIntPipe) id: number) {
    return this.collegesService.findOne(id);
  }

  @Auth()
  @Patch(':id')
  update(@Param('id', ParseIntPipe) id: number, @Body() updateCollegeDto: UpdateCollegeDto) {
    return this.collegesService.update(id, updateCollegeDto);
  }

  @Auth()
  @Delete(':id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.collegesService.remove(id);
  }
}
