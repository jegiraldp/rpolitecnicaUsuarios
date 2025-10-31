import type { College } from "@/types/College";
import { createCrudApi } from "./crud";

export interface CollegeFilters {
  page?: number;
  limit?: number;
  name?: string;
}

export const CollegesAPI = createCrudApi<College, Pick<College, "name">, Partial<Pick<College, "name">>>(
  "/colleges",
);

