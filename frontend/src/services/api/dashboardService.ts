import { http } from "./http";

export interface DashboardResponse {
  users: number;
  articlesPublished: number;
  articlesReviewed: number;
  topAuthors: { id: number; username: string; total: number }[];
  topReviewers: { id: number; username: string; total: number }[];
}

export const DashboardAPI = {
  async get(): Promise<DashboardResponse> {
    return http<DashboardResponse>({ path: "/dashboard" });
  },
};
