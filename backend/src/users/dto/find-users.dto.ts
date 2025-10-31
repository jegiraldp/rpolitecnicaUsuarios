import { IsArray, IsBoolean, IsEmail, IsOptional, IsString, IsUUID, MaxLength } from 'class-validator';
import { PaginationDto } from '../../common/dto/pagination.dto';

export class FindUsersDto extends PaginationDto {
  @IsOptional()
  @IsUUID('4')
  id?: string;

  @IsOptional()
  @IsString()
  username?: string;

  @IsOptional()
  @IsEmail()
  email?: string;

  @IsOptional()
  @IsString()
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
  @IsUUID('4')
  interestId?: string;
}

