import { BeforeInsert, BeforeUpdate, Column, Entity, Index, JoinTable, ManyToMany, ManyToOne, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { College } from "../../colleges/entities/college.entity";
import { Career } from "../../careers/entities/career.entity";
import { Interest } from "../../interests/entities/interest.entity";
import { Publication } from "./publication.entity";
import { PublicationReviews } from "./publication_reviews.entity";

@Entity("user")
export class User {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 100 })
  @Index({ unique: true })
  username: string;

  @Column({ length: 255 })
  @Index({ unique: true })
  email: string;

  @Column({ type: 'varchar', length: 120, nullable: true })
  country: string | null;

  @Column({ name: 'is_active', type: 'boolean', default: true, select: false })
  isActive: boolean;

  @Column({ name: 'updated_at', type: 'datetime', nullable: true })
  updatedAt: Date | null;

  @Column({ name: 'created_at', type: 'datetime', default: () => 'CURRENT_TIMESTAMP' })
  createdAt: Date;

  @ManyToOne(() => College, { nullable: true })
  college?: College | null;

  @ManyToOne(() => Career, { nullable: true })
  career?: Career | null;

  @ManyToMany(() => Interest, { nullable: true })
  @JoinTable({ name: 'user_interests' })
  interests?: Interest[];

  @OneToMany(
    () => Publication,
    publication => publication.author
  )
  publication: Publication[];

  @OneToMany(() => PublicationReviews,
    publicationReviews => publicationReviews.reviewer,
    { eager: true })
  publicationReview: PublicationReviews[];


  @BeforeInsert()
  @BeforeUpdate()
  beforeInsertOrUpdate() {
    if (this.email) this.email = this.email.toLowerCase();
    if (this.username) this.username = this.username.toLowerCase();
  }
}
