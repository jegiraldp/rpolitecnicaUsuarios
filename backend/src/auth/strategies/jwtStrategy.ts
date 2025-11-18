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
        super({
            secretOrKey: configService.get("JWT_SECRET"),
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
            .addSelect("user.is_active")
            .where("user.id=:id", { id })
            .getOne()
        if (!user) throw new UnauthorizedException("Token not valid")
        if (!user.isActive) throw new UnauthorizedException("User is not available")
        return user
    }
}
