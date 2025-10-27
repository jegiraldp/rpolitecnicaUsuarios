import { TestingModule } from "@nestjs/testing";
import { getRepositoryToken } from "@nestjs/typeorm";
import { Repository } from "typeorm";

import { CollegesService } from "../../colleges/colleges.service";
import { College } from "../../colleges/entities/college.entity";
import { SeedService } from "../seed/seedService";

export interface TestServices {
    collegeServices: CollegesService;

}

export interface TestRepositories {
    collegeRepository: Repository<College>;

}

export class TestHelpers {
    static getRepositories(module: TestingModule): TestRepositories {
        return {
            collegeRepository: module.get<Repository<College>>(getRepositoryToken(College)),
        }
    }
    static getServices(module: TestingModule): TestServices {
        return {
            collegeServices: module.get<CollegesService>(CollegesService),
        }
    }

    // static async loginAsAdmin(app: INestApplication): Promise<AdminLogin | undefined> {
    //     const response = await request(app.getHttpServer())
    //         .post('/user/login')
    //         .send({ username: initialData.user[0].username, password: "Jhondoe123*" });

    //     return response.body;
    // }

    static async setupTestData(seedService: SeedService): Promise<void> {
        await seedService.executeSEED();
    }

}