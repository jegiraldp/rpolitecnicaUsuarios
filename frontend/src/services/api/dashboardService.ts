import { http } from "./http";

export interface DashboardResponse {
  users: number;
  articlesPublished: number;
  articlesReviewed: number;
  topAuthors: { id: number; username: string; total: number }[];
  topReviewers: { id: number; username: string; total: number }[];
  usersByCountry: { country: string; total: number }[];
  publicationsByCountry: { country: string; total: number }[];
}

export type DashboardDetailType = "author" | "reviewer";

export type DashboardPublicationDetail = {
  id: number;
  title?: string | null;
  status?: string | null;
  datePublished?: string | null;
};

export type DashboardReviewDetail = {
  id: number;
  publicationId: number;
  publicationTitle?: string | null;
  publicationStatus?: string | null;
  recommendation?: string | null;
  dateAssigned?: string | null;
  dateCompleted?: string | null;
};

export const DashboardAPI = {
  async get(): Promise<DashboardResponse> {
    return http<DashboardResponse>({ path: "/dashboard" });
  },
  async getDetails(type: DashboardDetailType, userId: number) {
    return http<Array<DashboardPublicationDetail | DashboardReviewDetail>>({
      path: `/dashboard/details/${type}/${userId}`,
    });
  },
};
