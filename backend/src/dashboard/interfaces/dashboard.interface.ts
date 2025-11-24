interface Dashboard{
    users: number;
    articlesPublished: number;
    articlesReviewed: number;
    topAuthors: { id: number; username: string; total: number }[];
    topReviewers: { id: number; username: string; total: number }[];
}
