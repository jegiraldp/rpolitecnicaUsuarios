import type { Career } from "@/types/Career";
import { createCrudApi } from "./crud";

export interface CareerFilters {
  page?: number;
  limit?: number;
  name?: string;
}

export const CareersAPI = createCrudApi<Career, Pick<Career, "name">, Partial<Pick<Career, "name">>>(
  "/careers",
);

