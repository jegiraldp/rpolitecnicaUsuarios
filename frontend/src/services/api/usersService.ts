import { http } from "./http";

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
}

export const UsersAPI = {
  async list(filters?: UserFilters): Promise<UserDTO[]> {
    return http<UserDTO[]>({ path: "/users", query: filters });
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

