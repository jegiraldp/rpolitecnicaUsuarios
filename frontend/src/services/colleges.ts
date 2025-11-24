import { USE_MOCK } from "./config";
import type { College } from "@/types/College";
import type { PaginatedResponse } from "@/types/common";
import { CollegesAPI, type CollegeFilters } from "./api/collegesService";
import { buildMockPaginatedResponse } from "./pagination";

export const CollegesService = {
  async list(filters?: CollegeFilters): Promise<PaginatedResponse<College>> {
    if (USE_MOCK) {
      const data = await import("./mock/colleges.json");
      return buildMockPaginatedResponse(data.default as College[], {
        page: filters?.page,
        limit: filters?.limit,
      });
    }
    return CollegesAPI.list(filters);
  },
  async get(id: number): Promise<College> {
    if (USE_MOCK) {
      const data = await import("./mock/colleges.json");
      const list = data.default as College[];
      const found = list.find((i) => i.id === id);
      if (!found) throw new Error("Not found");
      return found;
    }
    return CollegesAPI.get(id);
  },
  async create(dto: Pick<College, "name">): Promise<College> {
    if (USE_MOCK) {
      return { id: Date.now(), name: dto.name } as College;
    }
    return CollegesAPI.create(dto);
  },
  async update(id: number, dto: Partial<Pick<College, "name">>): Promise<College> {
    if (USE_MOCK) {
      return { id, name: dto.name || "" } as College;
    }
    return CollegesAPI.update(id, dto);
  },
  async remove(id: number): Promise<College> {
    if (USE_MOCK) {
      return { id, name: "" } as College;
    }
    return CollegesAPI.remove(id);
  },
};
