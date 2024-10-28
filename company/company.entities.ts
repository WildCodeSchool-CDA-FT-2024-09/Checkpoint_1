import "reflect-metadata";
import { BaseEntity, Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { JobOffer } from "../jobOffer/jobOffer.entities";

@Entity()
export class Company extends BaseEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @Column()
  description: string;

  // Relation OneToMany avec JobOffer
  @OneToMany(() => JobOffer, jobOffer => jobOffer.company)
  jobOffers?: JobOffer[];
}
