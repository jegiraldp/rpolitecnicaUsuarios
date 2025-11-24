import { Column, Entity, JoinColumn, ManyToOne, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { User } from "./user.entity";
import { PublicationReviews } from "./publication_reviews.entity";
import { PublicationStatus } from "../enum/publication.enum";

@Entity('publication')
export class Publication {
    @PrimaryGeneratedColumn()
    id: number;

    @Column({ type: 'text', nullable: true })
    title?: string;

    @Column({ type: 'text', nullable: true })
    abstract?: string;

    @Column({ nullable: true })
    pages?: string;

    @Column({ nullable: true })
    language?: string;

    @Column({ nullable: true })
    issueId?: number;

    @Column({ type: 'datetime', nullable: true })
    datePublished?: Date;

    @Column({ type: "simple-enum", enum: PublicationStatus })
    status: PublicationStatus;

    @ManyToOne(() => User,
        user => user.publication,
        { eager: true })
    author: User;

    @OneToMany(() => PublicationReviews,
        publicationReviews => publicationReviews.publication,
        { eager: true })
    publicationReview: PublicationReviews[];

}
