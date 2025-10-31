import { UsersService } from "../users.service";
import { CreateUserDto } from "../dto/create-user.dto";
import { User } from "../entities/user.entity";

export class UserMother {
  constructor(private readonly usersService: UsersService) {}

  static dto(overrides?: Partial<CreateUserDto>): CreateUserDto {
    return {
      username: overrides?.username ?? 'user-default',
      email: overrides?.email ?? 'user@example.com',
      country: overrides?.country ?? 'us',
      isActive: overrides?.isActive ?? true,
      collegeId: overrides?.collegeId,
      careerId: overrides?.careerId,
      interestIds: overrides?.interestIds,
    } as CreateUserDto;
  }

  async createMany(count: number, overrides?: Partial<User>): Promise<User[]> {
    const users: User[] = [];
    for (let i = 0; i < count; i++) {
      const dto = UserMother.dto({ ...overrides } as any);
      const user = await this.usersService.create(dto as any);
      users.push(user!);
    }
    return users;
  }
}

