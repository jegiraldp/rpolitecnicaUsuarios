import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { CollegesModule } from './colleges/colleges.module';
import { InterestsModule } from './interests/interests.module';
import { CareersModule } from './careers/careers.module';
import { UsersModule } from './users/users.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ConfigModule } from '@nestjs/config';
import { AuthModule } from './auth/auth.module';
import { HealthModule } from './health/health.module';
import { DashboardModule } from './dashboard/dashboard.module';

const ssl =
  process.env.DB_SSL === 'true'
    ? {
      rejectUnauthorized: true,
      ca: process.env.DB_SSL_CA?.replace(/\\n/g, '\n'),
    }
    : undefined;

@Module({
  imports: [CollegesModule, InterestsModule, CareersModule, UsersModule,
    ConfigModule.forRoot({ envFilePath: '../.env', isGlobal: true }),

    TypeOrmModule.forRoot({
      type: 'mysql',
      host: process.env.DB_HOST,
      port: +process.env.DB_PORT!,
      username: process.env.MYSQL_USER,
      password: process.env.MYSQL_PASSWORD,
      database: process.env.MYSQL_DATABASE,
      ssl,
      autoLoadEntities: true,
      synchronize: true,
    }),
    AuthModule,
    HealthModule,
    DashboardModule
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule { }
