import { Injectable, Logger } from '@nestjs/common';
import { User } from 'src/users/entities/user.entity';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';
import { handleException } from 'src/common/handleErrors';
import { Publication } from 'src/users/entities/publication.entity';
import { PublicationReviews } from 'src/users/entities/publication_reviews.entity';
import { PublicationStatus } from 'src/users/enum/publication.enum';

@Injectable()
export class DashboardService {
  private readonly logger = new Logger(DashboardService.name);
  constructor(
    @InjectRepository(User)
    private readonly usersRepository: Repository<User>,
    @InjectRepository(Publication)
    private readonly publicationsRepository: Repository<Publication>,
    @InjectRepository(PublicationReviews)
    private readonly publicationReviewsRepository: Repository<PublicationReviews>
  ) { }

  async findAll(): Promise<Dashboard | undefined> {
    try {
      const users = await this.usersRepository.count();
      const articlesPublished = await this.publicationsRepository.count({ where: { status: PublicationStatus.PUBLISHED } });

      const articlesReviewed = await this.publicationReviewsRepository
        .createQueryBuilder('review')
        .select('COUNT(DISTINCT review.publicationId)', 'count')
        .getRawOne<{ count: string }>()
        .then((r) => Number(r?.count ?? 0));

      const topAuthors = await this.publicationsRepository
        .createQueryBuilder('p')
        .leftJoin('p.author', 'author')
        .where('p.status = :status', { status: PublicationStatus.PUBLISHED })
        .select('author.id', 'id')
        .addSelect('author.username', 'username')
        .addSelect('COUNT(p.id)', 'total')
        .groupBy('author.id')
        .addGroupBy('author.username')
        .orderBy('total', 'DESC')
        .limit(5)
        .getRawMany<{ id: number; username: string; total: string }>();

      const topReviewers = await this.publicationReviewsRepository
        .createQueryBuilder('r')
        .leftJoin('r.reviewer', 'reviewer')
        .select('reviewer.id', 'id')
        .addSelect('reviewer.username', 'username')
        .addSelect('COUNT(r.id)', 'total')
        .groupBy('reviewer.id')
        .addGroupBy('reviewer.username')
        .orderBy('total', 'DESC')
        .limit(5)
        .getRawMany<{ id: number; username: string; total: string }>();

      const usersByCountry = await this.usersRepository
        .createQueryBuilder('u')
        .select("COALESCE(NULLIF(u.country, ''), 'Sin país')", 'country')
        .addSelect('COUNT(u.id)', 'total')
        .groupBy("COALESCE(NULLIF(u.country, ''), 'Sin país')")
        .orderBy('total', 'DESC')
        .getRawMany<{ country: string; total: string }>();

      const publicationsByCountry = await this.publicationsRepository
        .createQueryBuilder('p')
        .leftJoin('p.author', 'author')
        .where('p.status = :status', { status: PublicationStatus.PUBLISHED })
        .select("COALESCE(NULLIF(author.country, ''), 'Sin país')", 'country')
        .addSelect('COUNT(p.id)', 'total')
        .groupBy("COALESCE(NULLIF(author.country, ''), 'Sin país')")
        .orderBy('total', 'DESC')
        .getRawMany<{ country: string; total: string }>();

      return {
        users,
        articlesPublished,
        articlesReviewed,
        topAuthors: topAuthors.map((t) => ({ id: Number(t.id), username: t.username, total: Number(t.total) })),
        topReviewers: topReviewers.map((t) => ({ id: Number(t.id), username: t.username, total: Number(t.total) })),
        usersByCountry: usersByCountry.map((c) => ({ country: c.country, total: Number(c.total) })),
        publicationsByCountry: publicationsByCountry.map((c) => ({ country: c.country, total: Number(c.total) })),
      };
    } catch (error) {
      handleException(error, this.logger);
    }
  }

  async findDetails(type: 'author' | 'reviewer', userId: number) {
    try {
      if (type === 'author') {
        const publications = await this.publicationsRepository.find({
          where: { author: { id: userId } },
          order: { datePublished: 'DESC' },
        });
        return publications.map((p) => ({
          id: p.id,
          title: p.title,
          status: p.status,
          datePublished: p.datePublished,
        }));
      }

      const reviews = await this.publicationReviewsRepository
        .createQueryBuilder('r')
        .leftJoin('r.publication', 'p')
        .select('r.id', 'id')
        .addSelect('p.id', 'publicationId')
        .addSelect('p.title', 'publicationTitle')
        .addSelect('p.status', 'publicationStatus')
        .addSelect('r.recommendation', 'recommendation')
        .addSelect('r.date_assigned', 'dateAssigned')
        .addSelect('r.date_completed', 'dateCompleted')
        .where('r.reviewerId = :id', { id: userId })
        .orderBy('r.date_assigned', 'DESC')
        .getRawMany<{
          id: number;
          publicationId: number;
          publicationTitle: string | null;
          publicationStatus: string | null;
          recommendation: string | null;
          dateAssigned: Date | null;
          dateCompleted: Date | null;
        }>();

      return reviews;
    } catch (error) {
      handleException(error, this.logger);
    }
  }
}
