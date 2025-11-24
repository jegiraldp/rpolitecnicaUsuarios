import { http } from "./http";
import type { PaginatedResponse } from "@/types/common";

export interface UserDTO {
  id: number;
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
  collegeId?: number;
  careerId?: number;
  interestId?: number;
}

export const UsersAPI = {
  async list(filters?: UserFilters): Promise<PaginatedResponse<UserDTO>> {
    return http<PaginatedResponse<UserDTO>>({ path: "/users", query: filters });
  },
  async get(id: number): Promise<UserDTO> {
    return http<UserDTO>({ path: `/users/${id}` });
  },
  async create(dto: Partial<UserDTO>): Promise<UserDTO> {
    return http<UserDTO, Partial<UserDTO>>({ path: "/users", method: "POST", body: dto });
  },
  async update(id: number, dto: Partial<UserDTO>): Promise<UserDTO> {
    return http<UserDTO, Partial<UserDTO>>({ path: `/users/${id}`, method: "PATCH", body: dto });
  },
  async deactivate(id: number): Promise<UserDTO> {
    return http<UserDTO>({ path: `/users/${id}/deactivate`, method: "PATCH" });
  },
};
