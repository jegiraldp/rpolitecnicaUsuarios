import { User } from "src/users/entities/user.entity";
import { Column, Entity, Index, JoinColumn, OneToOne, PrimaryGeneratedColumn } from "typeorm";

@Entity("auth")
export class Auth {
    @PrimaryGeneratedColumn()
    id: number;

    @OneToOne(() => User, { nullable: true })
    @JoinColumn({ name: "user_id" })
    user: User;

    @Column({ length: 100 })
    @Index({ unique: true })
    username: string;

    @Column({ length: 255, select: false })
    password: string;

    @Column({ length: 50, nullable: true })
    role?: string;
}
