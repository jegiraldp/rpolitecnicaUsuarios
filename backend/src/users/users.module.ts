import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UsersService } from './users.service';
import { UsersController } from './users.controller';
import { User } from './entities/user.entity';
import { College } from '../colleges/entities/college.entity';
import { Career } from '../careers/entities/career.entity';
import { Interest } from '../interests/entities/interest.entity';
import { AuthModule } from 'src/auth/auth.module';

@Module({
  imports: [TypeOrmModule.forFeature([User, College, Career, Interest]), AuthModule],
  controllers: [UsersController],
  providers: [UsersService],
})
export class UsersModule {}
