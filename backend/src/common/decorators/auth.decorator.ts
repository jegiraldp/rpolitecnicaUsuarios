import { applyDecorators, UseGuards } from "@nestjs/common";
import { AuthGuard } from '@nestjs/passport';
import { Roles } from "../enums/roles";
import { RoleProtected } from "./role-protected.decorator";
import { UserRoleGuard } from "../guards/user-role/user-role.guard";

export const Auth = (roles?: Roles[]) => {
    const decorators = [
        UseGuards(AuthGuard())
    ]
    if (roles && roles.length > 0) {
        decorators.unshift(RoleProtected(...roles))
        decorators.push(UseGuards(UserRoleGuard));
    }
    return applyDecorators(...decorators);
}   