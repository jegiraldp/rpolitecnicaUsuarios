import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { Publication } from "./publication.entity";
import { User } from "./user.entity";
import { ReviewRecommendation } from "../enum/publication.enum";

@Entity("publication_reviews")
export class PublicationReviews {
    @PrimaryGeneratedColumn()
    id: number;

    @ManyToOne(() => Publication, { nullable: false })
    publication: Publication;

    @ManyToOne(() => User, { nullable: false })
    reviewer: User;

    @Column({ type: "simple-enum", enum: ReviewRecommendation })
    recommendation?: string;

    @Column({ type: 'datetime', nullable: true })
    date_assigned: Date;

    @Column({ type: 'datetime', nullable: true })
    date_completed: Date;

}