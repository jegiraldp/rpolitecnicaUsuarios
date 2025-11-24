export enum PublicationStatus {
  QUEUED = 'queued',
  PUBLISHED = 'published',
  DECLINED = 'declined',
  ARCHIVED = 'archived',
}

export enum ReviewRecommendation {
  ACCEPT = 'accept',
  REVISIONS = 'revisions',
  RESUBMIT_ELSEWHERE = 'resubmit_elsewhere',
  DECLINE = 'decline',
  SEE_COMMENTS = 'see_comments',
  NO_RECOMMENDATION = 'no_recommendation',
}