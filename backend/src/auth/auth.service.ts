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

  async login(loginDto: LoginDto) {
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
      console.log(user)
      if (!user.isActive) throw new UnauthorizedException('Usuario inactivo');

      const isValid = await bcrypt.compare(loginDto.password, credentials.password);
      if (!isValid) throw new UnauthorizedException('Credenciales inválidas');

      const payload: JwtPayload = { id: user.id };
      const accessToken = await this.jwtService.signAsync(payload);

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
