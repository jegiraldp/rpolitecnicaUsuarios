import { SetMetadata } from "@nestjs/common"
import { GeneralRoles } from "../enums/roles"

export const META_ROLES = "roles"

export const RoleProtected = (...args: GeneralRoles[]) => {
    return SetMetadata(META_ROLES, args)
}