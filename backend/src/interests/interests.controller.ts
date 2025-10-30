import { Body, Controller, Delete, Get, Param, Patch, Post, Query } from '@nestjs/common';
import { InterestsService } from './interests.service';
import { CreateInterestDto } from './dto/create-interest.dto';
import { UpdateInterestDto } from './dto/update-interest.dto';
import { FindInterestsDto } from './dto/find-interests.dto';

@Controller('interests')
export class InterestsController {
  constructor(private readonly interestsService: InterestsService) {}

  @Post()
  create(@Body() dto: CreateInterestDto) {
    return this.interestsService.create(dto);
  }

  @Get()
  findAll(@Query() filters: FindInterestsDto) {
    return this.interestsService.findAll(filters);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.interestsService.findOne(id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() dto: UpdateInterestDto) {
    return this.interestsService.update(id, dto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.interestsService.remove(id);
  }
}

