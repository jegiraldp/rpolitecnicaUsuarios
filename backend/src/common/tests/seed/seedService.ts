import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { College } from "src/colleges/entities/college.entity";
import { Repository } from "typeorm";
import { CollegeFactory } from "../factories/college.factory";
import { User } from "src/users/entities/user.entity";
import { Interest } from "src/interests/entities/interest.entity";
import { Career } from "src/careers/entities/career.entity";
import { Auth } from "src/auth/entities/auth.entity";
import * as bcrypt from "bcrypt";

@Injectable()
export class SeedService {
    constructor(
        @InjectRepository(College) private readonly collegeRepository: Repository<College>,
        @InjectRepository(User) private readonly userRepository: Repository<User>,
        @InjectRepository(Interest) private readonly interestRepository: Repository<Interest>,
        @InjectRepository(Career) private readonly careerRepository: Repository<Career>,
        @InjectRepository(Auth) private readonly authRepository: Repository<Auth>,
    ) {}
    async executeSEED() {
        await this.deleteTables();
        await CollegeFactory.createMany(this.collegeRepository, 5);
        await this.createDefaultUser();
    }

    async deleteTables(){
        // Order matters due to FK references: auth -> users -> careers/interests/colleges
        await this.authRepository.createQueryBuilder().delete().where({}).execute();
        await this.userRepository.createQueryBuilder().delete().where({}).execute();
        await this.careerRepository.createQueryBuilder().delete().where({}).execute();
        await this.interestRepository.createQueryBuilder().delete().where({}).execute();
        await this.collegeRepository.createQueryBuilder().delete().where({}).execute();
    }

    private async createDefaultUser() {
        const user = this.userRepository.create({
            username: "admin",
            email: "admin@test.com",
            isActive: true,
        });
        const saved = await this.userRepository.save(user);
        const password = await bcrypt.hash("Admin123*", 10);
        const auth = this.authRepository.create({
            user: saved,
            username: saved.username,
            password,
            role: "admin",
        });
        await this.authRepository.save(auth);
    }
}
