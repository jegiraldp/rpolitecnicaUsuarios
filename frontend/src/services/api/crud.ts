import { http } from "./http";

export interface CrudFilters {
  page?: number;
  limit?: number;
  [key: string]: any;
}

export interface CrudApi<TModel, TCreate = Partial<TModel>, TUpdate = Partial<TModel>> {
  list: (filters?: CrudFilters) => Promise<TModel[]>;
  get: (id: string) => Promise<TModel>;
  create: (dto: TCreate) => Promise<TModel>;
  update: (id: string, dto: TUpdate) => Promise<TModel>;
  remove: (id: string) => Promise<TModel>;
}

export function createCrudApi<TModel, TCreate = Partial<TModel>, TUpdate = Partial<TModel>>(
  basePath: string,
): CrudApi<TModel, TCreate, TUpdate> {
  const path = basePath.startsWith("/") ? basePath : `/${basePath}`;

  return {
    async list(filters) {
      return http<TModel[]>({ path, query: filters });
    },
    async get(id: string) {
      return http<TModel>({ path: `${path}/${id}` });
    },
    async create(dto: TCreate) {
      return http<TModel, TCreate>({ path, method: "POST", body: dto });
    },
    async update(id: string, dto: TUpdate) {
      return http<TModel, TUpdate>({ path: `${path}/${id}`, method: "PATCH", body: dto });
    },
    async remove(id: string) {
      return http<TModel>({ path: `${path}/${id}`, method: "DELETE" });
    },
  };
}

