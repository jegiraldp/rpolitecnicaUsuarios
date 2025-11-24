import { http } from "./http";
import type { PaginatedResponse } from "@/types/common";

export interface CrudFilters {
  page?: number;
  limit?: number;
  [key: string]: any;
}

export interface CrudApi<TModel, TCreate = Partial<TModel>, TUpdate = Partial<TModel>, TId = number> {
  list: (filters?: CrudFilters) => Promise<PaginatedResponse<TModel>>;
  get: (id: TId) => Promise<TModel>;
  create: (dto: TCreate) => Promise<TModel>;
  update: (id: TId, dto: TUpdate) => Promise<TModel>;
  remove: (id: TId) => Promise<TModel>;
}

export function createCrudApi<TModel, TCreate = Partial<TModel>, TUpdate = Partial<TModel>, TId = number>(
  basePath: string,
): CrudApi<TModel, TCreate, TUpdate, TId> {
  const path = basePath.startsWith("/") ? basePath : `/${basePath}`;

  return {
    async list(filters) {
      return http<PaginatedResponse<TModel>>({ path, query: filters });
    },
    async get(id: TId) {
      return http<TModel>({ path: `${path}/${id}` });
    },
    async create(dto: TCreate) {
      return http<TModel, TCreate>({ path, method: "POST", body: dto });
    },
    async update(id: TId, dto: TUpdate) {
      return http<TModel, TUpdate>({ path: `${path}/${id}`, method: "PATCH", body: dto });
    },
    async remove(id: TId) {
      return http<TModel>({ path: `${path}/${id}`, method: "DELETE" });
    },
  };
}
