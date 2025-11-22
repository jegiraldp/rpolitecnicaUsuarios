import { CreateCareerDto } from "../dto/create-career.dto";
import { CareersService } from "../careers.service";
import { Career } from "../entities/career.entity";

export class CareerMother {
  constructor(private readonly careersService: CareersService) {}

  static dto(overrides?: Partial<CreateCareerDto>): CreateCareerDto {
    return {
      name: overrides?.name ?? 'default-career',
      ...overrides,
    };
  }

  async createMany(count: number, overrides?: Partial<Career>): Promise<Career[]> {
    const careers: Career[] = [];
    for (let i = 0; i < count; i++) {
      const name = overrides?.name ?? `default-career-${i}`;
      const dto = CareerMother.dto({ ...overrides, name });
      const career = await this.careersService.create(dto as Career);
      careers.push(career!);
    }
    return careers;
  }
}
