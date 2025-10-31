import type { Interest } from "@/types/Interest";
import { http } from "./http";

export interface InterestFilters {
  page?: number;
  limit?: number;
  name?: string;
}

export const InterestsAPI = {
  async list(filters?: InterestFilters): Promise<Interest[]> {
    return http<Interest[]>({ path: "/interests", query: filters });
  },
  async create(dto: Pick<Interest, "name">): Promise<Interest> {
    return http<Interest, typeof dto>({ path: "/interests", method: "POST", body: dto });
  },
  async update(id: string, dto: Partial<Pick<Interest, "name">>): Promise<Interest> {
    return http<Interest, typeof dto>({ path: `/interests/${id}`, method: "PATCH", body: dto });
  },
  async remove(id: string): Promise<Interest> {
    return http<Interest>({ path: `/interests/${id}`, method: "DELETE" });
  },
};

