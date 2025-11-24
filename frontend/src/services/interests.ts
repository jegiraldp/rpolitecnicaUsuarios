import { USE_MOCK } from "./config";
import type { Interest } from "@/types/Interest";
import type { PaginatedResponse } from "@/types/common";
import { InterestsAPI, type InterestFilters } from "./api/interestsService";
import { buildMockPaginatedResponse } from "./pagination";

export const InterestsService = {
  async list(filters?: InterestFilters): Promise<PaginatedResponse<Interest>> {
    if (USE_MOCK) {
      const data = await import("./mock/interests.json");
      return buildMockPaginatedResponse(data.default as Interest[], {
        page: filters?.page,
        limit: filters?.limit,
      });
    }
    return InterestsAPI.list(filters);
  },
  async get(id: number): Promise<Interest> {
    if (USE_MOCK) {
      const data = await import("./mock/interests.json");
      const list = data.default as Interest[];
      const found = list.find((i) => i.id === id);
      if (!found) throw new Error("Not found");
      return found;
    }
    return InterestsAPI.get(id);
  },
  async create(dto: Pick<Interest, "name">): Promise<Interest> {
    if (USE_MOCK) {
      return { id: Date.now(), name: dto.name } as Interest;
    }
    return InterestsAPI.create(dto);
  },
  async update(id: number, dto: Partial<Pick<Interest, "name">>): Promise<Interest> {
    if (USE_MOCK) {
      return { id, name: dto.name || "" } as Interest;
    }
    return InterestsAPI.update(id, dto);
  },
  async remove(id: number): Promise<Interest> {
    if (USE_MOCK) {
      return { id, name: "" } as Interest;
    }
    return InterestsAPI.remove(id);
  },
};
