import { INestApplication } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { getRepositoryToken } from '@nestjs/typeorm';
import * as bcrypt from 'bcrypt';
import { Auth } from 'src/auth/entities/auth.entity';
import { User } from 'src/users/entities/user.entity';
import { Repository } from 'typeorm';
import { Roles } from '../enums/roles';

export async function runSeed(app: INestApplication) {
    const config = app.get(ConfigService);
    const username = config.get<string>('SEED_ADMIN_USERNAME');
    const email = config.get<string>('SEED_ADMIN_EMAIL');
    const password = config.get<string>('SEED_ADMIN_PASSWORD');

    if (!username || !password || !email) throw new Error('Faltan envs de seed');

    const userRepo = app.get<Repository<User>>(getRepositoryToken(User));
    const authRepo = app.get<Repository<Auth>>(getRepositoryToken(Auth));

    const user = await userRepo.findOneBy({ email });
    if (!user) throw new Error("Admin user not found");

    const hash = await bcrypt.hash(password, 10);

    const existingAuth = await authRepo.findOne({ where: [{ user: { id: user.id } }, { username }] });
    const authAdmin = authRepo.create({
        user: user,
        username,
        password: hash,
        role: Roles.ADMIN,
    });

    return await authRepo.save(authAdmin);
}
