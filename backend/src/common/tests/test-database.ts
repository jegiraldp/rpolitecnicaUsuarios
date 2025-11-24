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
import { JwtStrategy } from "src/auth/strategies/jwtStrategy";
import { Auth } from "src/auth/entities/auth.entity";
import { AuthModule } from "src/auth/auth.module";
import { Publication } from "src/users/entities/publication.entity";
import { PublicationReviews } from "src/users/entities/publication_reviews.entity";
import { DashboardModule } from "src/dashboard/dashboard.module";
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
                        entities: [College, Interest, Career, User, Auth, Publication, PublicationReviews],
                        synchronize: true,
                        dropSchema: true,
                        extra: { pragma: "FOREIGN_KEYS=ON;" }
                    }),
                    TypeOrmModule.forFeature([College, Interest, Career, User, Auth, Publication, PublicationReviews]),
                    CollegesModule,
                    InterestsModule,
                    CareersModule,
                    UsersModule,
                    AuthModule,
                    DashboardModule
                ],
                providers: [SeedService]
            }).compile()

            this.app = this.module.createNestApplication();
            // Bypass auth guards in E2E context
            this.app.useGlobalGuards({ canActivate: () => true } as any);
            await this.app.init()
            // Prevent supertest from trying to bind sockets (sandbox restriction)
            const httpServer: any = this.app.getHttpServer();
            httpServer.address = () => ({ port: 0 });
            httpServer.listen = (_port: number, cb?: () => void) => {
                cb?.();
                return httpServer;
            };

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
                    entities: [College, Interest, Career, User, Auth, Publication, PublicationReviews],
                    synchronize: true,
                    dropSchema: true,
                    extra: {
                        pragma: "FOREIGN_KEYS=ON;"
                    }
                }),
                TypeOrmModule.forFeature([College, Interest, Career, User, Auth, Publication, PublicationReviews]),
                CollegesModule,
                InterestsModule,
                CareersModule,
                UsersModule,
                AuthModule,
            ],
            providers: [SeedService]
        })
            .overrideProvider(JwtStrategy)
            .useValue({})
            .compile();

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
