import { CollegesService } from "../colleges.service";
import { CreateCollegeDto } from "../dto/create-college.dto";
import { College } from "../entities/college.entity";

export class CollegeMother {
    constructor(
        private readonly collgeService: CollegesService,
    ) { }

    static dto(overrides?: Partial<CreateCollegeDto>): CreateCollegeDto {
        return {
            name: overrides?.name ?? 'default-name',
            ...overrides,
        };
    }

    async createMany(count: number, overrides?: Partial<College>): Promise<College[]> {
        const colleges: College[] = [];
        for (let i = 0; i < count; i++) {
            const dto = CollegeMother.dto(overrides);
            const college = await this.collgeService.create(dto as College);
            colleges.push(college!);
        }

        return colleges;

    }
}