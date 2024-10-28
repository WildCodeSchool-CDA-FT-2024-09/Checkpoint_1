import "reflect-metadata"; // Nécessaire pour TypeORM
import { DataSource } from "typeorm";
import { Candidate } from "../candidate/candidate.entities"; 
import { Application } from "../application/application.entities";
import { JobOffer } from "../jobOffer/jobOffer.entities"; 
import { Company } from "../company/company.entities"; 
import { Recruiter } from "../recruiter/recruiter.entities"; 
import fs from 'fs';
import path from 'path';

// Configuration de la source de données
export const dataSource = new DataSource({
  type: "sqlite",
  database: "./data/database.sqlite", 
  entities: [Candidate, Application, JobOffer, Company, Recruiter],
  synchronize: true,
  logging: true,
});

// Fonction pour lire les fichiers JSON
const readJsonFile = async (filePath: string) => {
  return new Promise<any>((resolve, reject) => {
    fs.readFile(filePath, 'utf8', (err, data) => {
      if (err) {
        return reject(err);
      }
      resolve(JSON.parse(data));
    });
  });
};

// Fonction pour insérer les données dans la base de données
const insertData = async () => {
  try {
    const companies = await readJsonFile(path.join(__dirname, 'company.json'));
    const recruiters = await readJsonFile(path.join(__dirname, 'recruiter.json'));
    const candidates = await readJsonFile(path.join(__dirname, 'candidate.json'));
    const jobOffers = await readJsonFile(path.join(__dirname, 'jobOffer.json'));

    // Insérer des entreprises
    for (const companyData of companies) {
      const company = new Company();
      company.name = companyData.name;
      company.description = companyData.description;
      await company.save();
    }

    // Insérer des recruteurs
    for (const recruiterData of recruiters) {
      const recruiter = new Recruiter();
      recruiter.login = recruiterData.login;
      recruiter.password = recruiterData.password;
      recruiter.company = await Company.findOne({ where: { name: recruiterData.companyName } }); 
      await recruiter.save();
    }

    // Insérer des candidats
    for (const candidateData of candidates) {
      const candidate = new Candidate();
      candidate.login = candidateData.login;
      candidate.password = candidateData.password;
      candidate.lastName = candidateData.lastName;
      candidate.firstName = candidateData.firstName;
      candidate.email = candidateData.email;
      candidate.phoneNumber = candidateData.phoneNumber;
      candidate.presentationText = candidateData.presentationText;
      await candidate.save();
    }

    // Insérer des offres d'emploi
    for (const jobOfferData of jobOffers) {
      const jobOffer = new JobOffer();
      jobOffer.jobTitle = jobOfferData.jobTitle;
      jobOffer.jobDescription = jobOfferData.jobDescription;
      jobOffer.jobCity = jobOfferData.jobCity;
      jobOffer.company = await Company.findOne({ where: { name: jobOfferData.companyName } }); 
      jobOffer.recruiter = await Recruiter.findOne({ where: { login: jobOfferData.recruiterLogin } }); 
      await jobOffer.save();
    }

    console.log("Data has been inserted into the database!");
  } catch (error) {
    console.error("Error during data insertion:", error);
  }
};

// Fonction principale pour initialiser la base de données et insérer des données
const createDatabase = async () => {
  try {
    await dataSource.initialize();
    console.log("Data Source has been initialized!");
    console.log("Database is ready.");
    await insertData(); // Insérer les données après initialisation
  } catch (error) {
    console.error("Error during Data Source initialization:", error);
  } finally {
    await dataSource.destroy(); // Fermer la connexion à la base de données
  }
};

createDatabase();
