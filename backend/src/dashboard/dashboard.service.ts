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

      return {
        users,
        articlesPublished,
        articlesReviewed,
        topAuthors: topAuthors.map((t) => ({ id: Number(t.id), username: t.username, total: Number(t.total) })),
        topReviewers: topReviewers.map((t) => ({ id: Number(t.id), username: t.username, total: Number(t.total) })),
      };
    } catch (error) {
      handleException(error, this.logger);
    }
  }

}
