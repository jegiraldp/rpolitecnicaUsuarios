import type { PaginatedResponse } from "@/types/common";

export function buildMockPaginatedResponse<T>(
  items: T[],
  options?: { page?: number; limit?: number },
): PaginatedResponse<T> {
  const limit = options?.limit && options.limit > 0 ? options.limit : items.length || 1;
  const page = options?.page && options.page > 0 ? options.page : 1;
  const totalPages = Math.max(1, Math.ceil(items.length / limit));
  const pageIndex = Math.min(page - 1, totalPages - 1);
  const start = pageIndex * limit;
  const paginatedItems = items.slice(start, start + limit);

  return {
    data: paginatedItems,
    meta: {
      total: items.length,
      page: pageIndex + 1,
      limit,
      totalPages,
    },
  };
}
