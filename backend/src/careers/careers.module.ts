import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Career } from './entities/career.entity';
import { CareersService } from './careers.service';
import { CareersController } from './careers.controller';
import { AuthModule } from 'src/auth/auth.module';

@Module({
  imports: [TypeOrmModule.forFeature([Career]), AuthModule],
  controllers: [CareersController],
  providers: [CareersService],
  exports: [TypeOrmModule]
})
export class CareersModule {}
