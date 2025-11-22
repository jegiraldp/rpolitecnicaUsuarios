import { INestApplication } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";
import { Test, TestingModule } from "@nestjs/testing";
import { TypeOrmModule } from "@nestjs/typeorm";
import { DataSource } from "typeorm";
import { SeedService } from "src/common/tests/seed/seedService";
import { College } from "../../colleges/entities/college.entity";
import { CollegesModule } from "../../colleges/colleges.module";
import { Interest } from "../../interests/entities/interest.entity";
import { InterestsModule } from "../../interests/interests.module";
import { Career } from "../../careers/entities/career.entity";
import { CareersModule } from "../../careers/careers.module";
import { User } from "../../users/entities/user.entity";
import { UsersModule } from "../../users/users.module";
export class TestDatabaseManager {
    private static module: TestingModule;
    private static app: INestApplication;
    private static initialized = false;

    static async initializeE2E(): Promise<{ module: TestingModule; app: INestApplication }> {
        if (!this.initialized) {
            this.module = await Test.createTestingModule({
                imports: [
                    ConfigModule.forRoot({ envFilePath: '../.env', isGlobal: true }),
                    TypeOrmModule.forRoot({
                        type: "sqlite",
                        database: ":memory:",
                        entities: [College, Interest, Career, User],
                        synchronize: true,
                        dropSchema: true,
                        extra: { pragma: "FOREIGN_KEYS=ON;" }
                    }),
                    TypeOrmModule.forFeature([College, Interest, Career, User]),
                    CollegesModule,
                    InterestsModule,
                    CareersModule,
                    UsersModule,
                ],
                providers: [SeedService]
            }).compile()

            this.app = this.module.createNestApplication();
            await this.app.init()

            const seedService = this.module.get<SeedService>(SeedService);
            await seedService.executeSEED();

            this.initialized = true;
        }

        return {
            module: this.module,
            app: this.app,
        }
    }

    static async initializeInt(): Promise<TestingModule> {
        this.module = await Test.createTestingModule({
            imports: [
                ConfigModule.forRoot({ envFilePath: '../.env', isGlobal: true }),
                TypeOrmModule.forRoot({
                    type: "sqlite",
                    database: ":memory:",
                    entities: [College, Interest, Career, User],
                    synchronize: true,
                    dropSchema: true,
                    extra: {
                        pragma: "FOREIGN_KEYS=ON;"
                    }
                }),
                TypeOrmModule.forFeature([College, Interest, Career, User]),
                CollegesModule,
                InterestsModule,
                CareersModule,
                UsersModule,
            ],
            providers: [SeedService]
        }).compile();

        // const dataSource = this.module.get<DataSource>(DataSource);
        // await dataSource.query('PRAGMA foreign_keys = ON;');

        const seedService = this.module.get<SeedService>(SeedService);
        await seedService.executeSEED();

        return this.module;
    }

    static async cleanUp(): Promise<void> {
        if (this.app) {
            await this.app.close()
            this.initialized = false;
        }
    }
}
