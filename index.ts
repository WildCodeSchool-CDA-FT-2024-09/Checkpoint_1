import express from "express";
import { initializeDataSource } from "./BDD/client"; 

const app = express();

app.use(express.json());

const startServer = async () => {
  await initializeDataSource();
  
  app.listen(3001, () => {
    console.log(`Server is listening on http://localhost:3001`);
  });
};

startServer();
