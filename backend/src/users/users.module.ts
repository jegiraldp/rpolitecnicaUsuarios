import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UsersService } from './users.service';
import { UsersController } from './users.controller';
import { User } from './entities/user.entity';
import { AuthModule } from 'src/auth/auth.module';
import { Publication } from './entities/publication.entity';
import { InterestsModule } from 'src/interests/interests.module';
import { CollegesModule } from 'src/colleges/colleges.module';
import { CareersModule } from 'src/careers/careers.module';
import { PublicationReviews } from './entities/publication_reviews.entity';

@Module({
  imports: [TypeOrmModule.forFeature([User, PublicationReviews, Publication]), AuthModule, InterestsModule, CollegesModule, CareersModule],
  controllers: [UsersController],
  providers: [UsersService],
  exports: [TypeOrmModule]
})
export class UsersModule { }
