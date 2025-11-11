import { http } from "./http";
import type { PaginatedResponse } from "@/types/common";

export interface UserDTO {
  id: string;
  username: string;
  email: string;
  country?: string | null;
  isActive: boolean;
  createdAt: string;
  updatedAt?: string | null;
}

export interface UserFilters {
  page?: number;
  limit?: number;
  username?: string;
  email?: string;
  country?: string;
  isActive?: boolean;
  collegeId?: string;
  careerId?: string;
  interestId?: string;
}

export const UsersAPI = {
  async list(filters?: UserFilters): Promise<PaginatedResponse<UserDTO>> {
    return http<PaginatedResponse<UserDTO>>({ path: "/users", query: filters });
  },
  async get(id: string): Promise<UserDTO> {
    return http<UserDTO>({ path: `/users/${id}` });
  },
  async create(dto: Partial<UserDTO>): Promise<UserDTO> {
    return http<UserDTO, Partial<UserDTO>>({ path: "/users", method: "POST", body: dto });
  },
  async update(id: string, dto: Partial<UserDTO>): Promise<UserDTO> {
    return http<UserDTO, Partial<UserDTO>>({ path: `/users/${id}`, method: "PATCH", body: dto });
  },
  async deactivate(id: string): Promise<UserDTO> {
    return http<UserDTO>({ path: `/users/${id}/deactivate`, method: "PATCH" });
  },
};
