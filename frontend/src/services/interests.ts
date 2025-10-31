import { USE_MOCK } from "./config";
import type { Interest } from "@/types/Interest";
import { InterestsAPI, type InterestFilters } from "./api/interestsService";

export const InterestsService = {
  async list(filters?: InterestFilters): Promise<Interest[]> {
    if (USE_MOCK) {
      const data = await import("./mock/interests.json");
      return data.default as Interest[];
    }
    return InterestsAPI.list(filters);
  },
  async create(dto: Pick<Interest, "name">): Promise<Interest> {
    if (USE_MOCK) {
      return { id: crypto.randomUUID(), name: dto.name } as Interest;
    }
    return InterestsAPI.create(dto);
  },
  async update(id: string, dto: Partial<Pick<Interest, "name">>): Promise<Interest> {
    if (USE_MOCK) {
      return { id, name: dto.name || "" } as Interest;
    }
    return InterestsAPI.update(id, dto);
  },
  async remove(id: string): Promise<Interest> {
    if (USE_MOCK) {
      return { id, name: "" } as Interest;
    }
    return InterestsAPI.remove(id);
  },
};

