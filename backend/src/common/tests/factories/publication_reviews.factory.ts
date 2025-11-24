
import { Publication } from 'src/users/entities/publication.entity';
import { Repository } from 'typeorm';
import { User } from 'src/users/entities/user.entity';
import { PublicationReviews } from 'src/users/entities/publication_reviews.entity';
import { PublicationFactory } from './publication.factory';
import { ReviewRecommendation } from 'src/users/enum/publication.enum';

export class PublicationReviewsFactory {
    static create(publicationReviewsRepository: Repository<PublicationReviews>, publicationReview: Partial<PublicationReviews>, overrides?: Partial<PublicationReviews>): PublicationReviews {
        return publicationReviewsRepository.create({
            ...publicationReview,
            ...overrides
        });
    }

    static async createMany(publicationReviewsRepository: Repository<PublicationReviews>, userRepository: Repository<User>, publicationRepository: Repository<Publication>, count: number): Promise<PublicationReviews[]> {
        const publicationReviews: PublicationReviews[] = [];

        // Asegura publicaciones y revisores existentes
        let publications = await publicationRepository.find({ relations: ['author'], take: count });
        if (!publications.length) {
            publications = await PublicationFactory.createMany(publicationRepository, userRepository, count);
        }

        let reviewer = publications[0]?.author || (await userRepository.findOne({ where: {} }));
        if (!reviewer) {
            reviewer = await userRepository.save(
                userRepository.create({ username: 'reviewer', email: 'reviewer@test.com', isActive: true }),
            );
        }

        for (let i = 0; i < count; i++) {
            const publication = publications[i % publications.length];
            const randomRecommendation = Object.values(ReviewRecommendation)[Math.floor(Math.random() * Object.values(ReviewRecommendation).length)];
            const publicationReview = this.create(publicationReviewsRepository, {
                publication,
                reviewer: reviewer!,
                recommendation: randomRecommendation,
                date_assigned: new Date(),
                date_completed: new Date()
            });

            publicationReviews.push(publicationReview);
        }
        return publicationReviewsRepository.save(publicationReviews);
    }
}
