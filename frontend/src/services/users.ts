import { USE_MOCK } from "./config";
import type { User } from "@/types/User";
import type { PaginatedResponse } from "@/types/common";
import { UsersAPI, type UserFilters } from "./api/usersService";
import { buildMockPaginatedResponse } from "./pagination";

export const UsersService = {
  async list(filters?: UserFilters): Promise<PaginatedResponse<User>> {
    if (USE_MOCK) {
      const data = await import("./mock/users.json");
      return buildMockPaginatedResponse(data.default as User[], {
        page: filters?.page,
        limit: filters?.limit,
      });
    }
    return UsersAPI.list(filters) as unknown as PaginatedResponse<User>;
  },
  async get(id: number): Promise<User> {
    if (USE_MOCK) {
      const data = await import("./mock/users.json");
      const list = data.default as User[];
      const found = list.find((i) => i.id === id);
      if (!found) throw new Error("Not found");
      return found;
    }
    return (await UsersAPI.get(id)) as unknown as User;
  },
}
