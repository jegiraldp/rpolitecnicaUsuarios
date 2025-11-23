import { ExtractJwt, Strategy } from "passport-jwt"
import { PassportStrategy } from "@nestjs/passport"
import { InjectRepository } from "@nestjs/typeorm"
import { User } from "src/users/entities/user.entity"
import { Repository } from "typeorm"
import { ConfigService } from "@nestjs/config"
import { JwtPayload } from "src/common/interfaces/jwtInterfaces"
import { Injectable, UnauthorizedException } from "@nestjs/common"

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
    constructor(
        @InjectRepository(User)
        private readonly userRepository: Repository<User>,
        configService: ConfigService
    ) {
        const secret = configService.get<string>("JWT_SECRET");
        super({
            secretOrKey: secret,
            jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken()
        })
    }

    async validate(payload: JwtPayload): Promise<User> {
        const { id } = payload;
        const user = await this.userRepository
            .createQueryBuilder("user")
            .leftJoinAndSelect("user.college", "college")
            .leftJoinAndSelect("user.career", "career")
            .leftJoinAndSelect("user.interests", "interests")
            .addSelect("user.isActive")
            .where("user.id=:id", { id })
            .getOne()
        if (!user) throw new UnauthorizedException("Token no válido")
        if (!user.isActive) throw new UnauthorizedException("Usuario no disponible")
        return user
    }
}
