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

    let user = await userRepo
        .createQueryBuilder('u')
        .where('LOWER(u.email) = :email OR LOWER(u.username) = :username', {
            email: email.toLowerCase(),
            username: username.toLowerCase(),
        })
        .getOne();

    if (!user) {
        user = userRepo.create({
            username: username.toLowerCase(),
            email: email.toLowerCase(),
            isActive: true,
        });
        user = await userRepo.save(user);
    }

    const hash = await bcrypt.hash(password, 10);

    let auth = await authRepo.findOne({
        where: [{ user: { id: user.id } }, { username: username.toLowerCase() }],
        relations: ['user'],
    });

    if (auth) {
        auth.password = hash;
        auth.role = Roles.ADMIN;
        auth.username = username.toLowerCase();
        auth.user = user;
    } else {
        auth = authRepo.create({
            user,
            username: username.toLowerCase(),
            password: hash,
            role: Roles.ADMIN,
        });
    }

    await authRepo.save(auth);
    // eslint-disable-next-line no-console
    console.log(`Seed admin ready: ${username} (${email})`);
}
