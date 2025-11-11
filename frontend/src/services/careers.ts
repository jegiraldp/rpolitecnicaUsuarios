import { USE_MOCK } from "./config";
import type { Career } from "@/types/Career";
import type { PaginatedResponse } from "@/types/common";
import { CareersAPI, type CareerFilters } from "./api/careersService";
import { buildMockPaginatedResponse } from "./pagination";

export const CareersService = {
  async list(filters?: CareerFilters): Promise<PaginatedResponse<Career>> {
    if (USE_MOCK) {
      const data = await import("./mock/careers.json");
      return buildMockPaginatedResponse(data.default as Career[], {
        page: filters?.page,
        limit: filters?.limit,
      });
    }
    return CareersAPI.list(filters);
  },
  async get(id: string): Promise<Career> {
    if (USE_MOCK) {
      const data = await import("./mock/careers.json");
      const list = data.default as Career[];
      const found = list.find((i) => i.id === id);
      if (!found) throw new Error("Not found");
      return found;
    }
    return CareersAPI.get(id);
  },
  async create(dto: Pick<Career, "name">): Promise<Career> {
    if (USE_MOCK) {
      return { id: crypto.randomUUID(), name: dto.name } as Career;
    }
    return CareersAPI.create(dto);
  },
  async update(id: string, dto: Partial<Pick<Career, "name">>): Promise<Career> {
    if (USE_MOCK) {
      return { id, name: dto.name || "" } as Career;
    }
    return CareersAPI.update(id, dto);
  },
  async remove(id: string): Promise<Career> {
    if (USE_MOCK) {
      return { id, name: "" } as Career;
    }
    return CareersAPI.remove(id);
  },
};
