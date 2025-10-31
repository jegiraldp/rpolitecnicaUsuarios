import { IsArray, IsBoolean, IsEmail, IsOptional, IsString, IsUUID, MaxLength } from 'class-validator';

export class CreateUserDto {
  @IsString()
  @MaxLength(100)
  username: string;

  @IsEmail()
  @MaxLength(255)
  email: string;

  @IsOptional()
  @IsString()
  @MaxLength(120)
  country?: string;

  @IsOptional()
  @IsBoolean()
  isActive?: boolean;

  @IsOptional()
  @IsUUID('4')
  collegeId?: string;

  @IsOptional()
  @IsUUID('4')
  careerId?: string;

  @IsOptional()
  @IsArray()
  @IsUUID('4', { each: true })
  interestIds?: string[];
}

