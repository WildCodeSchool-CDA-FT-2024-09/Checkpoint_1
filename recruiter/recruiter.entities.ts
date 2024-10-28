import "reflect-metadata";
import { BaseEntity, Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { JobOffer } from "../jobOffer/jobOffer.entities"; 

@Entity()
export class Recruiter extends BaseEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  login: string;

  @Column()
  password: string;

  @Column()
  company_id: number; 

  // Relation OneToMany avec JobOffer
  @OneToMany(() => JobOffer, jobOffer => jobOffer.recruiter)
  jobOffers?: JobOffer[];
}
