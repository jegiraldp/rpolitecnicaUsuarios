interface Dashboard{
    users: number;
    articlesPublished: number;
    articlesReviewed: number;
    topAuthors: { id: number; username: string; total: number }[];
    topReviewers: { id: number; username: string; total: number }[];
    usersByCountry: { country: string; total: number }[];
    publicationsByCountry: { country: string; total: number }[];
}

type DashboardDetailType = 'author' | 'reviewer';

type DashboardPublicationDetail = {
    id: number;
    title?: string | null;
    status?: string | null;
    datePublished?: Date | null;
};

type DashboardReviewDetail = {
    id: number;
    publicationId: number;
    publicationTitle?: string | null;
    publicationStatus?: string | null;
    recommendation?: string | null;
    dateAssigned?: Date | null;
    dateCompleted?: Date | null;
};
