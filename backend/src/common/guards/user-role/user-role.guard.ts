import { CanActivate, ExecutionContext, ForbiddenException, Injectable, NotFoundException } from '@nestjs/common';
import { Reflector } from '@nestjs/core';
import { Observable } from 'rxjs';
import { META_ROLES } from 'src/common/decorators/role-protected.decorator';

@Injectable()
export class UserRoleGuard implements CanActivate {
  constructor(private readonly reflector: Reflector) { }
  canActivate(
    context: ExecutionContext,
  ): boolean | Promise<boolean> | Observable<boolean> {
    const validRoles: string[] = this.reflector.get(META_ROLES, context.getHandler())
    if (!validRoles) return true;
    if (validRoles.length === 0) return true

    const req = context.switchToHttp().getRequest();
    const user = req.user;
    if (!user) throw new NotFoundException("User not found");

    // TODO: Crear una relacion de roles y cambiar esta condicion
    if (validRoles.includes(user.role)) {
      return true
    }

    throw new ForbiddenException('You don´t have the permission to perform this action')
  }
}
