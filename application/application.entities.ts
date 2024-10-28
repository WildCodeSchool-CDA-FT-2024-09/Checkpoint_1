import "reflect-metadata";
import { BaseEntity, Entity, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { Candidate } from "../candidate/candidate.entities"; 
import { JobOffer } from "../jobOffer/jobOffer.entities"; 

@Entity()
export class Application extends BaseEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @ManyToOne(() => Candidate, candidate => candidate.applications)
  candidate: Candidate;

  @ManyToOne(() => JobOffer, jobOffer => jobOffer.applications)
  jobOffer: JobOffer;
}
