BEGIN TRANSACTION;
PRAGMA writable_schema=ON;
CREATE TABLE IF NOT EXISTS Candidat (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(50),
    mdp VARCHAR(50),
    nom VARCHAR(50),
    prénom VARCHAR(50),
    email VARCHAR(50),
    téléphone INTEGER,
    texte TEXT
);
CREATE TABLE IF NOT EXISTS Candidat_Offres (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    candidats_id INTEGER,
    offres_id INTEGER,
    a_candidate BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (candidats_id) REFERENCES Candidat(id),
    FOREIGN KEY (offres_id) REFERENCES Offre(id)
);
CREATE TABLE IF NOT EXISTS Entreprise (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(50),
    description TEXT
);
CREATE TABLE IF NOT EXISTS Offre (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    entreprise_id INTEGER,
    post VARCHAR(100),
    ville VARCHAR(50),
    description TEXT,
    FOREIGN KEY (entreprise_id) REFERENCES Entreprise(id)
);
CREATE TABLE IF NOT EXISTS Recruteur (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    entreprise_id INTEGER UNIQUE,
    login VARCHAR(50),
    mdp VARCHAR(50),
    FOREIGN KEY (entreprise_id) REFERENCES Entreprise(id)
);
CREATE TABLE IF NOT EXISTS sqlean_define(name text primary key, type text, body text);
DELETE FROM "sqlite_sequence";
INSERT INTO "Candidat" VALUES(1,'candidat1','pass123','Dupont','Marie','marie.dupont@example.com',1234567890,'Développeuse expérimentée.');
INSERT INTO "Candidat" VALUES(2,'candidat2','pass456','Martin','Paul','paul.martin@example.com',2345678901,'Chef de projet avec 5 ans d’expérience.');
INSERT INTO "Candidat" VALUES(3,'candidat3','pass789','Durand','Sophie','sophie.durand@example.com',3456789012,'Spécialiste en IA.');
INSERT INTO "Candidat" VALUES(4,'candidat4','pass012','Leroy','Jean','jean.leroy@example.com',4567890123,'Technicien en énergie renouvelable.');
INSERT INTO "Candidat" VALUES(5,'candidat5','pass345','Moreau','Lucie','lucie.moreau@example.com',5678901234,'Designer UX/UI.');
INSERT INTO "Candidat" VALUES(6,'candidat6','pass678','Garcia','Pierre','pierre.garcia@example.com',6789012345,'Analyste en logistique.');
INSERT INTO "Candidat" VALUES(7,'candidat7','pass901','Bernard','Julien','julien.bernard@example.com',7890123456,'Développeur back-end.');
INSERT INTO "Candidat" VALUES(8,'candidat8','pass234','Petit','Camille','camille.petit@example.com',8901234567,'Ingénieur en IA.');
INSERT INTO "Candidat" VALUES(9,'candidat9','pass567','Roux','Alice','alice.roux@example.com',9012345678,'Data Scientist.');
INSERT INTO "Candidat" VALUES(10,'candidat10','pass890','Fontaine','Hugo','hugo.fontaine@example.com',1230987654,'Consultant en stratégie.');
INSERT INTO "Candidat" VALUES(11,'candidat11','pass321','Blanc','Emma','emma.blanc@example.com',4567098765,'Assistante RH.');
INSERT INTO "Candidat" VALUES(12,'candidat12','pass654','Garnier','Lucas','lucas.garnier@example.com',7890012345,'Chef de produit.');
INSERT INTO "Candidat_Offres" VALUES(1,1,1,1);
INSERT INTO "Candidat_Offres" VALUES(2,2,2,1);
INSERT INTO "Candidat_Offres" VALUES(3,3,3,1);
INSERT INTO "Candidat_Offres" VALUES(4,4,4,1);
INSERT INTO "Candidat_Offres" VALUES(5,5,5,1);
INSERT INTO "Candidat_Offres" VALUES(6,6,6,1);
INSERT INTO "Candidat_Offres" VALUES(7,7,7,1);
INSERT INTO "Candidat_Offres" VALUES(8,8,8,1);
INSERT INTO "Candidat_Offres" VALUES(9,9,9,1);
INSERT INTO "Candidat_Offres" VALUES(10,10,10,1);
INSERT INTO "Candidat_Offres" VALUES(11,11,11,1);
INSERT INTO "Candidat_Offres" VALUES(12,12,12,1);
INSERT INTO "Candidat_Offres" VALUES(13,1,13,1);
INSERT INTO "Candidat_Offres" VALUES(14,2,14,1);
INSERT INTO "Candidat_Offres" VALUES(15,3,15,1);
INSERT INTO "Candidat_Offres" VALUES(16,4,16,1);
INSERT INTO "Candidat_Offres" VALUES(17,5,17,1);
INSERT INTO "Candidat_Offres" VALUES(18,6,18,1);
INSERT INTO "Candidat_Offres" VALUES(19,7,19,1);
INSERT INTO "Candidat_Offres" VALUES(20,8,20,1);
INSERT INTO "Entreprise" VALUES(1,'TechCorp','Entreprise spécialisée dans les solutions IA.');
INSERT INTO "Entreprise" VALUES(2,'GreenEnergy','Entreprise dans le domaine des énergies renouvelables.');
INSERT INTO "Entreprise" VALUES(3,'EducaPlus','Centre de formation pour les professionnels.');
INSERT INTO "Entreprise" VALUES(4,'MediCare','Société de services de santé numérique.');
INSERT INTO "Entreprise" VALUES(5,'AutoLogistics','Entreprise de logistique automobile.');
INSERT INTO "Offre" VALUES(1,1,'Ingénieur Logiciel','Paris','Développement de solutions IA.');
INSERT INTO "Offre" VALUES(2,1,'Chef de Projet','Paris','Gestion de projets IA.');
INSERT INTO "Offre" VALUES(3,1,'Data Scientist','Paris','Analyse de données pour IA.');
INSERT INTO "Offre" VALUES(4,2,'Technicien Énergie','Lyon','Maintenance d’équipements solaires.');
INSERT INTO "Offre" VALUES(5,2,'Responsable Projets','Lyon','Coordination des projets d’énergie verte.');
INSERT INTO "Offre" VALUES(6,2,'Analyste Environnement','Lyon','Études d’impact environnemental.');
INSERT INTO "Offre" VALUES(7,3,'Formateur Développement','Marseille','Cours de développement web.');
INSERT INTO "Offre" VALUES(8,3,'Conseiller Formation','Marseille','Accompagnement des apprenants.');
INSERT INTO "Offre" VALUES(9,3,'Coordinateur Pédagogique','Marseille','Coordination des programmes de formation.');
INSERT INTO "Offre" VALUES(10,4,'Infirmier Digital','Nice','Support pour les solutions de santé numérique.');
INSERT INTO "Offre" VALUES(11,4,'Chef de Produit Santé','Nice','Développement de produits santé.');
INSERT INTO "Offre" VALUES(12,4,'Responsable Service Clients','Nice','Assistance pour les patients.');
INSERT INTO "Offre" VALUES(13,5,'Logisticien','Toulouse','Gestion des stocks et logistique.');
INSERT INTO "Offre" VALUES(14,5,'Analyste Logistique','Toulouse','Optimisation des chaînes logistiques.');
INSERT INTO "Offre" VALUES(15,5,'Chargé de Transport','Toulouse','Coordination des opérations de transport.');
INSERT INTO "Offre" VALUES(16,1,'Développeur Front-End','Paris','Développement d’interfaces utilisateurs.');
INSERT INTO "Offre" VALUES(17,2,'Spécialiste Énergie Solaire','Lyon','Développement de projets solaires.');
INSERT INTO "Offre" VALUES(18,3,'Formateur IA','Marseille','Cours de formation en IA.');
INSERT INTO "Offre" VALUES(19,4,'Analyste de Données Santé','Nice','Analyse des données des patients.');
INSERT INTO "Offre" VALUES(20,5,'Chef de Projet Logistique','Toulouse','Gestion des projets de logistique.');
INSERT INTO "Recruteur" VALUES(1,1,'recruteur1','mdp1');
INSERT INTO "Recruteur" VALUES(2,2,'recruteur2','mdp2');
INSERT INTO "Recruteur" VALUES(3,3,'recruteur3','mdp3');
INSERT INTO "Recruteur" VALUES(4,4,'recruteur4','mdp4');
INSERT INTO "Recruteur" VALUES(5,5,'recruteur5','mdp5');
PRAGMA writable_schema=OFF;
COMMIT;