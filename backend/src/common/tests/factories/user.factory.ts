import { CreateUserDto } from "src/users/dto/create-user.dto";
import { User } from "src/users/entities/user.entity";
import { Repository } from "typeorm";

export class UserFactory {
    static create(userRepository: Repository<User>, user: CreateUserDto, overrides?: Partial<User>): User {
        return userRepository.create({
            ...user,
            ...overrides
        })
    }

    static async createMany(userRepository: Repository<User>, count: number): Promise<User[]> {
        const users: User[] = [];
        for (let i = 0; i < count; i++) {
            const user = this.create(userRepository, { username: `username-${i}`, email: `user-${i}@example.com` });
            users.push(user);
        }
        return userRepository.save(users);
    }
}