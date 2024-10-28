import "reflect-metadata";
import { BaseEntity, Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { Application } from "application/application.entities"; 

@Entity()
export class Candidate extends BaseEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  login: string;

  @Column()
  password: string;

  @Column()
  lastName: string;

  @Column()
  firstName: string;

  @Column()
  email: string;

  @Column()
  phoneNumber: string; 

  @Column()
  presentationText: string;

  // Relation OneToMany avec Application
  @OneToMany(() => Application, application => application.candidate)
  applications?: Application[];
}
