import { TestingModule } from "@nestjs/testing";
import { getRepositoryToken } from "@nestjs/typeorm";
import { Repository } from "typeorm";

import { CollegesService } from "../../colleges/colleges.service";
import { College } from "../../colleges/entities/college.entity";
import { InterestsService } from "../../interests/interests.service";
import { Interest } from "../../interests/entities/interest.entity";
import { CareersService } from "../../careers/careers.service";
import { Career } from "../../careers/entities/career.entity";
import { SeedService } from "../seed/seedService";

export interface TestServices {
    collegeServices: CollegesService;
    interestsService: InterestsService;
    careersService: CareersService;

}

export interface TestRepositories {
    collegeRepository: Repository<College>;
    interestRepository: Repository<Interest>;
    careerRepository: Repository<Career>;

}

export class TestHelpers {
    static getRepositories(module: TestingModule): TestRepositories {
        return {
            collegeRepository: module.get<Repository<College>>(getRepositoryToken(College)),
            interestRepository: module.get<Repository<Interest>>(getRepositoryToken(Interest)),
            careerRepository: module.get<Repository<Career>>(getRepositoryToken(Career)),
        }
    }
    static getServices(module: TestingModule): TestServices {
        return {
            collegeServices: module.get<CollegesService>(CollegesService),
            interestsService: module.get<InterestsService>(InterestsService),
            careersService: module.get<CareersService>(CareersService),
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
