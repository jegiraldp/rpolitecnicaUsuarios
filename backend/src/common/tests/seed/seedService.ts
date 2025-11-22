import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { College } from "src/colleges/entities/college.entity";
import { Repository } from "typeorm";
import { CollegeFactory } from "../factories/college.factory";
import { User } from "src/users/entities/user.entity";
import { Interest } from "src/interests/entities/interest.entity";
import { Career } from "src/careers/entities/career.entity";

@Injectable()
export class SeedService {
    constructor(
        @InjectRepository(College) private readonly collegeRepository: Repository<College>,
        @InjectRepository(User) private readonly userRepository: Repository<User>,
        @InjectRepository(Interest) private readonly interestRepository: Repository<Interest>,
        @InjectRepository(Career) private readonly careerRepository: Repository<Career>,
    ) {}
    async executeSEED() {
        await this.deleteTables();
        await CollegeFactory.createMany(this.collegeRepository, 5);
    }

    async deleteTables(){
        // Order matters due to FK references: users -> careers/interests/colleges
        await this.userRepository.createQueryBuilder().delete().where({}).execute();
        await this.careerRepository.createQueryBuilder().delete().where({}).execute();
        await this.interestRepository.createQueryBuilder().delete().where({}).execute();
        await this.collegeRepository.createQueryBuilder().delete().where({}).execute();
    }
}
