import { USE_MOCK } from "./config";
import type { College } from "@/types/College";
import { CollegesAPI, type CollegeFilters } from "./api/collegesService";

export const CollegesService = {
  async list(filters?: CollegeFilters): Promise<College[]> {
    if (USE_MOCK) {
      const data = await import("./mock/colleges.json");
      return data.default as College[];
    }
    return CollegesAPI.list(filters);
  },
  async get(id: string): Promise<College> {
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
      return { id: crypto.randomUUID(), name: dto.name } as College;
    }
    return CollegesAPI.create(dto);
  },
  async update(id: string, dto: Partial<Pick<College, "name">>): Promise<College> {
    if (USE_MOCK) {
      return { id, name: dto.name || "" } as College;
    }
    return CollegesAPI.update(id, dto);
  },
  async remove(id: string): Promise<College> {
    if (USE_MOCK) {
      return { id, name: "" } as College;
    }
    return CollegesAPI.remove(id);
  },
};

