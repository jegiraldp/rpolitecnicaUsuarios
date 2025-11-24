import { Injectable, Logger, UnauthorizedException } from '@nestjs/common';
import { LoginDto } from './dto/login.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { User } from 'src/users/entities/user.entity';
import { Repository } from 'typeorm';
import { handleException } from 'src/common/handleErrors';
import { Auth } from './entities/auth.entity';
import { JwtService } from '@nestjs/jwt';
import { JwtPayload } from 'src/common/interfaces/jwtInterfaces';
import * as bcrypt from 'bcrypt';
import type { Request, Response } from 'express';
import type { StringValue } from 'ms';

@Injectable()
export class AuthService {
  private readonly logger = new Logger(AuthService.name);
  constructor(
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
    @InjectRepository(Auth)
    private readonly authRepository: Repository<Auth>,
    private readonly jwtService: JwtService,
  ) { }

  private accessExpiresIn(): StringValue | number {
    const expiresIn = process.env.JWT_EXPIRES_IN;
    return (expiresIn ?? '15m') as StringValue | number;
  }

  private refreshSecret() {
    return process.env.REFRESH_JWT_SECRET || process.env.JWT_SECRET;
  }

  private refreshExpiresIn(): StringValue | number {
    const expiresIn = process.env.REFRESH_EXPIRES_IN;
    return (expiresIn ?? '7d') as StringValue | number;
  }

  private async signAccessToken(id: number) {
    const payload: JwtPayload = { id };
    return this.jwtService.signAsync(payload, { expiresIn: this.accessExpiresIn() });
  }

  private readonly refreshJwt = new JwtService({
    secret: this.refreshSecret(),
    signOptions: {
      expiresIn: this.refreshExpiresIn(),
    },
  });

  private async signRefreshToken(id: number) {
    return this.refreshJwt.signAsync({ id });
  }


  private setRefreshCookie(res: Response, token: string) {
    const maxAgeMs = 7 * 24 * 60 * 60 * 1000; // 7 days
    const isProd = process.env.NODE_ENV === 'production';
    const secure = isProd;
    const sameSite = isProd ? 'none' : 'lax';
    res.cookie('refresh_token', token, {
      httpOnly: true,
      secure,
      sameSite,
      path: '/',
      maxAge: maxAgeMs,
    });
  }

  private parseCookies(req: Request): Record<string, string> {
    const header = req.headers.cookie;
    if (!header) return {};
    return header.split(';').reduce<Record<string, string>>((acc, part) => {
      const [k, ...rest] = part.split('=');
      const key = k.trim();
      const value = rest.join('=').trim();
      if (key) acc[key] = decodeURIComponent(value);
      return acc;
    }, {});
  }

  async login(loginDto: LoginDto, res: Response) {
    try {
      const username = loginDto.username.toLowerCase();

      const credentials = await this.authRepository
        .createQueryBuilder('auth')
        .addSelect('auth.password')
        .where('LOWER(auth.username) = :username', { username })
        .getOne();

      if (!credentials) throw new UnauthorizedException('Credenciales inválidas');

      const user = await this.userRepository
        .createQueryBuilder('user')
        .addSelect('user.isActive')
        .where('LOWER(user.username) = :username', { username })
        .getOne();

      if (!user) throw new UnauthorizedException('Usuario no existe');
      if (!user.isActive) throw new UnauthorizedException('Usuario inactivo');

      const isValid = await bcrypt.compare(loginDto.password, credentials.password);
      if (!isValid) throw new UnauthorizedException('Credenciales inválidas');

      const accessToken = await this.signAccessToken(user.id);
      const refreshToken = await this.signRefreshToken(user.id);
      this.setRefreshCookie(res, refreshToken);

      return {
        accessToken,
        user: {
          id: user.id,
          username: user.username,
          email: user.email,
          country: user.country,
          role: credentials.role,
        },
      };
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  async refreshToken(req: Request, res: Response) {
    try {
      const cookies = this.parseCookies(req);
      const refreshFromCookie = cookies['refresh_token'];
      if (!refreshFromCookie) throw new UnauthorizedException('Refresh token no encontrado');

      const decoded = await this.jwtService.verifyAsync<JwtPayload>(refreshFromCookie, {
        secret: this.refreshSecret(),
      });
      const userId = decoded.id;

      const user = await this.userRepository
        .createQueryBuilder('user')
        .leftJoinAndSelect('user.college', 'college')
        .leftJoinAndSelect('user.career', 'career')
        .leftJoinAndSelect('user.interests', 'interests')
        .addSelect('user.isActive')
        .where('user.id = :id', { id: userId })
        .getOne();

      if (!user) throw new UnauthorizedException('Usuario no encontrado');
      if (!user.isActive) throw new UnauthorizedException('Usuario inactivo');

      const credentials = await this.authRepository.findOne({
        where: { user: { id: user.id } },
      });
      if (!credentials) throw new UnauthorizedException('Usuario no encontrado');

      const accessToken = await this.signAccessToken(user.id);
      const newRefreshToken = await this.signRefreshToken(user.id);
      this.setRefreshCookie(res, newRefreshToken);

      return {
        accessToken,
        user: {
          id: user.id,
          username: user.username,
          email: user.email,
          country: user.country,
          role: credentials.role,
        },
      };
    } catch (error) {
      handleException(error, this.logger);
    }
  }
}
