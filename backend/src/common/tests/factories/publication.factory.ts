
import { Publication } from 'src/users/entities/publication.entity';
import { UserFactory } from './user.factory';
import { Repository } from 'typeorm';
import { User } from 'src/users/entities/user.entity';
import { PublicationStatus } from 'src/users/enum/publication.enum';

export class PublicationFactory {
    static create(publicationRepository: Repository<Publication>, publication: Partial<Publication>, overrides?: Partial<Publication>): Publication {
        return publicationRepository.create({
            ...publication,
            ...overrides
        });
    }

    static async createMany(publicationRepository: Repository<Publication>, userRepository: Repository<User>, count: number): Promise<Publication[]> {
        const publications: Publication[] = [];
        let author = await userRepository.findOne({ where: {} });
        if (!author) {
            const [created] = await UserFactory.createMany(userRepository, 1);
            author = created;
        }

        for (let i = 0; i < count; i++) {
            const randomStatus = Object.values(PublicationStatus)[Math.floor(Math.random() * Object.values(PublicationStatus).length)];
            const publication = this.create(publicationRepository, {
                title: `publication-title-${i}`,
                abstract: `publication-abstract-${i}`,
                pages: `publication-pages-${i}`,
                language: "es",
                issueId: i,
                datePublished: new Date(),
                status: randomStatus,
                author,
            });
            publications.push(publication);
        }
        return publicationRepository.save(publications);
    }
}
