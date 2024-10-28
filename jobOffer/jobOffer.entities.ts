import "reflect-metadata";
import { BaseEntity, Column, Entity, ManyToOne, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { Company } from "../company/company.entities"; 
import { Recruiter } from "../recruiter/recruiter.entities"; 
import { Application } from "../application/application.entities"; 

@Entity()
export class JobOffer extends BaseEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  jobTitle: string;

  @Column()
  jobDescription: string;

  @Column()
  jobCity: string;

  // Relation ManyToOne avec Company
  @ManyToOne(() => Company, company => company.jobOffers)
  company: Company;

  // Relation ManyToOne avec Recruiter
  @ManyToOne(() => Recruiter, recruiter => recruiter.jobOffers)
  recruiter: Recruiter;

  // Relation OneToMany avec Application
  @OneToMany(() => Application, application => application.jobOffer)
  applications: Application[]; 
}
