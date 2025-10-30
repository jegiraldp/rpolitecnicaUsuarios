import { BeforeInsert, BeforeUpdate, Column, Entity, Index, PrimaryGeneratedColumn } from "typeorm";

@Entity("career")
export class Career {
  @PrimaryGeneratedColumn("uuid")
  id: string;

  @Column({ length: 255 })
  @Index({ unique: true })
  name: string;

  @Column({ type: 'datetime', nullable: true })
  updatedAt: Date;

  @Column({ type: 'datetime', default: () => 'CURRENT_TIMESTAMP' })
  createdAt: Date;

  @Column({ type: 'date', nullable: true })
  deletedAt: Date;

  @BeforeInsert()
  @BeforeUpdate()
  beforeInsertOrUpdate() {
    if (this.name) this.name = this.name.toLowerCase();
  }
}

