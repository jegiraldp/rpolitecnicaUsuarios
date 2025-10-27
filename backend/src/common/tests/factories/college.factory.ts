import { College } from "src/colleges/entities/college.entity";
import { Repository } from "typeorm";

export class CollegeFactory {
    static create(collegeRepository: Repository<College>, overrides?: Partial<College>): College {
        return collegeRepository.create({
            name: overrides?.name ?? 'default-name'
        });
    }

    static createMany(collegeRepository: Repository<College>, count: number): College[] {
        const colleges: College[] = [];
        for (let i = 0; i < count; i++) {
            const college = this.create(collegeRepository, { name: `college-${i}` });
            colleges.push(college);
        }
        return colleges;
    }

}