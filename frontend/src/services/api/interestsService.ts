import type { Interest } from "@/types/Interest";
import { createCrudApi } from "./crud";

export interface InterestFilters {
  page?: number;
  limit?: number;
  name?: string;
}

export const InterestsAPI = createCrudApi<Interest, Pick<Interest, "name">, Partial<Pick<Interest, "name">>>(
  "/interests",
);
