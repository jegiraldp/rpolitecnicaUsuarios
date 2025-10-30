import { InterestsService } from "../interests.service";
import { CreateInterestDto } from "../dto/create-interest.dto";
import { Interest } from "../entities/interest.entity";

export class InterestMother {
  constructor(private readonly interestsService: InterestsService) {}

  static dto(overrides?: Partial<CreateInterestDto>): CreateInterestDto {
    return {
      name: overrides?.name ?? 'default-interest',
      ...overrides,
    };
  }

  async createMany(count: number, overrides?: Partial<Interest>): Promise<Interest[]> {
    const interests: Interest[] = [];
    for (let i = 0; i < count; i++) {
      const dto = InterestMother.dto(overrides);
      const interest = await this.interestsService.create(dto as Interest);
      interests.push(interest!);
    }
    return interests;
  }
}
