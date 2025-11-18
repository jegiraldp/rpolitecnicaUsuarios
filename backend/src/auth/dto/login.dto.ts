import { IsString, MaxLength, MinLength } from 'class-validator';

export class LoginDto {
    @IsString()
    @MaxLength(100)
    username: string;

    @IsString()
    @MinLength(6)
    @MaxLength(128)
    password: string;
}
