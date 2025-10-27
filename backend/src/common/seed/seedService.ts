import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { College } from "../../colleges/entities/college.entity";
import { Repository } from "typeorm";
import { CollegeFactory } from "../tests/factories/college.factory";

@Injectable()
export class SeedService {
    constructor(
        @InjectRepository(College)
        private readonly collegeRepository: Repository<College>,
    ) {}
    async executeSEED() {
        await this.deleteTables();
        await CollegeFactory.createMany(this.collegeRepository, 5);
    }

    async deleteTables(){
        await this.collegeRepository.createQueryBuilder().delete().where({}).execute();
    }
}
