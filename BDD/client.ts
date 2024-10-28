import { DataSource } from "typeorm";
import { Candidate } from "../candidate/candidate.entities"; 
import { Application } from "../application/application.entities"; 
import { JobOffer } from "../jobOffer/jobOffer.entities"; 
import { Company } from "../company/company.entities"; 
import { Recruiter } from "../recruiter/recruiter.entities"; 

// Créer une instance de DataSource
export const dataSource = new DataSource({
  type: "sqlite",
  database: "./data/database.sqlite", 
  entities: [Candidate, Application, JobOffer, Company, Recruiter],
  synchronize: true, // Synchronisation des entités avec la base de données
  logging: true, // Afficher les logs
});


const initializeDataSource = async () => {
  try {
    await dataSource.initialize();
    console.log("Data Source has been initialized!");
  } catch (error) {
    console.error("Error during Data Source initialization:", error);
  }
};

export { initializeDataSource };
