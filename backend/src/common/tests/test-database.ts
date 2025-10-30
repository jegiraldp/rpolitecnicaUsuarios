import { INestApplication } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";
import { Test, TestingModule } from "@nestjs/testing";
import { TypeOrmModule } from "@nestjs/typeorm";
import { DataSource } from "typeorm";
import { SeedService } from "../seed/seedService";
import { College } from "../../colleges/entities/college.entity";
import { CollegesModule } from "../../colleges/colleges.module";
import { Interest } from "../../interests/entities/interest.entity";
import { InterestsModule } from "../../interests/interests.module";
import { Career } from "../../careers/entities/career.entity";
import { CareersModule } from "../../careers/careers.module";
export class TestDatabaseManager {
    private static module: TestingModule;
    private static app: INestApplication;
    private static initialized = false;

    static async initializeE2E(): Promise<{ module: TestingModule; app: INestApplication }> {
        if (!this.initialized) {
            this.module = await Test.createTestingModule({
                imports: [
                    ConfigModule.forRoot({envFilePath: '../.env.test', isGlobal: true}),
                    TypeOrmModule.forRoot({
                        type: "mysql",
                        host: process.env.DB_HOST,
                        port: +process.env.DB_PORT!,
                        database: process.env.MYSQL_DATABASE,
                        username: process.env.MYSQL_USER,
                        password: process.env.MYSQL_PASSWORD,
                        entities: [College, Interest, Career],
                        synchronize: true,
                        dropSchema: true
                    }),
                    TypeOrmModule.forFeature([College, Interest, Career]),
                    CollegesModule,
                    InterestsModule,
                    CareersModule,
                ],
                providers: [SeedService]
            }).compile()

            this.app = this.module.createNestApplication();
            await this.app.init()

            const seedService = this.module.get<SeedService>(SeedService);
            await seedService.executeSEED();

        }

        return {
            module: this.module,
            app: this.app,
        }
    }

    static async initializeInt(): Promise<TestingModule> {
        this.module = await Test.createTestingModule({
            imports: [
                ConfigModule.forRoot({envFilePath: '../.env.test', isGlobal: true}),
                TypeOrmModule.forRoot({
                    type: "sqlite",
                    database: ":memory:",
                    entities: [College, Interest, Career],
                    synchronize: true,
                    dropSchema: true,
                    extra: {
                        pragma: "FOREIGN_KEYS=ON;"
                    }
                }),
                TypeOrmModule.forFeature([College, Interest, Career]),
                    CollegesModule,
                    InterestsModule,
                    CareersModule,
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
