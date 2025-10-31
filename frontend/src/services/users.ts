import { USE_MOCK } from "./config";
import type { User } from "@/types/User";
import { UsersAPI, type UserFilters } from "./api/usersService";

export const UsersService = {
  async list(filters?: UserFilters): Promise<User[]> {
    if (USE_MOCK) {
      const data = await import("./mock/users.json");
      return data.default as User[];
    }
    return UsersAPI.list(filters) as unknown as User[];
  },
  async get(id: string): Promise<User> {
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

