import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Interest } from './entities/interest.entity';
import { InterestsService } from './interests.service';
import { InterestsController } from './interests.controller';
import { AuthModule } from 'src/auth/auth.module';

@Module({
  imports: [TypeOrmModule.forFeature([Interest]), AuthModule],
  controllers: [InterestsController],
  providers: [InterestsService],
  exports: [TypeOrmModule]
})
export class InterestsModule {}
