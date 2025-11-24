import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { College } from "src/colleges/entities/college.entity";
import { Repository } from "typeorm";
import { CollegeFactory } from "../factories/college.factory";
import { User } from "src/users/entities/user.entity";
import { Interest } from "src/interests/entities/interest.entity";
import { Career } from "src/careers/entities/career.entity";
import { Auth } from "src/auth/entities/auth.entity";
import * as bcrypt from "bcrypt";
import { UserFactory } from "../factories/user.factory";
import { PublicationFactory } from "../factories/publication.factory";
import { Publication } from "src/users/entities/publication.entity";
import { PublicationReviews } from "src/users/entities/publication_reviews.entity";
import { PublicationReviewsFactory } from "../factories/publication_reviews.factory";

@Injectable()
export class SeedService {
    constructor(
        @InjectRepository(College) private readonly collegeRepository: Repository<College>,
        @InjectRepository(User) private readonly userRepository: Repository<User>,
        @InjectRepository(Interest) private readonly interestRepository: Repository<Interest>,
        @InjectRepository(Career) private readonly careerRepository: Repository<Career>,
        @InjectRepository(Auth) private readonly authRepository: Repository<Auth>,
        @InjectRepository(Publication) private readonly publicationRepository: Repository<Publication>,
        @InjectRepository(PublicationReviews) private readonly publicationReviewsRepository: Repository<PublicationReviews>,
    ) { }
    async executeSEED() {
        await this.deleteTables();
        await CollegeFactory.createMany(this.collegeRepository, 5);
        await UserFactory.createMany(this.userRepository, 5);
        await this.createDefaultUser();
        await PublicationFactory.createMany(this.publicationRepository, this.userRepository, 5);
        await PublicationReviewsFactory.createMany(this.publicationReviewsRepository, this.userRepository,this.publicationRepository, 5);
    }

    async deleteTables() {
        // Order matters due to FK references: auth -> users -> careers/interests/colleges
        await this.publicationReviewsRepository.createQueryBuilder().delete().where({}).execute();
        await this.publicationRepository.createQueryBuilder().delete().where({}).execute();
        await this.authRepository.createQueryBuilder().delete().where({}).execute();
        await this.userRepository.createQueryBuilder().delete().where({}).execute();
        await this.careerRepository.createQueryBuilder().delete().where({}).execute();
        await this.interestRepository.createQueryBuilder().delete().where({}).execute();
        await this.collegeRepository.createQueryBuilder().delete().where({}).execute();
    }

    private async createDefaultUser() {
        const user = this.userRepository.create({
            username: "admin",
            email: "admin@test.com",
            isActive: true,
        });
        const saved = await this.userRepository.save(user);
        const password = await bcrypt.hash("Admin123*", 10);
        const auth = this.authRepository.create({
            user: saved,
            username: saved.username,
            password,
            role: "admin",
        });
        await this.authRepository.save(auth);
    }
}
