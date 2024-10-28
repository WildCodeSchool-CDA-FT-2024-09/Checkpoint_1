CREATE DATABASE recrutement;
USE recrutement;

CREATE TABLE recruteur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE entreprise (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255)
);

CREATE TABLE offre (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    city VARCHAR(255),
    recruteur_id INT,
    FOREIGN KEY (recruteur_id) REFERENCES recruteur(id)
);

CREATE TABLE candidat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255),
    presentation VARCHAR(255)
);

CREATE TABLE entreprise_offre (
    entreprise_id INT,
    offre_id INT,
    PRIMARY KEY (entreprise_id, offre_id),
    FOREIGN KEY (entreprise_id) REFERENCES entreprise(id),
    FOREIGN KEY (offre_id) REFERENCES offre(id)
);

CREATE TABLE recruteur_offre (
    recruteur_id INT,
    offre_id INT,
    FOREIGN KEY (recruteur_id) REFERENCES recruteur(id),
    FOREIGN KEY (offre_id) REFERENCES offre(id),
    PRIMARY KEY (recruteur_id, offre_id)
);

CREATE TABLE candidat_offre (
    candidat_id INT,
    offre_id INT,
    PRIMARY KEY (candidat_id, offre_id),
    FOREIGN KEY (candidat_id) REFERENCES candidat(id),
    FOREIGN KEY (offre_id) REFERENCES offre(id)
);


--injection de donnée

INSERT INTO recruteur (password, email) VALUES 
('pass123', 'recruteur1@example.com'),
('pass456', 'recruteur2@example.com');

INSERT INTO entreprise (name, description) VALUES 
('Tech Corp', 'Entreprise spécialisée en technologie'),
('Finance Inc', 'Société de services financiers');

INSERT INTO offre (title, description, city, recruteur_id) VALUES 
('Développeur Full Stack', 'Développement d\'applications web', 'Paris', 1),
('Data Analyst', 'Analyse de données pour prises de décision', 'Lyon', 2),
('Consultant Financier', 'Conseil en stratégie financière', 'Marseille', 1);

INSERT INTO candidat (name, lastname, password, email, phone_number, presentation) VALUES 
('Alice', 'Dupont', 'pass789', 'alice@example.com', '0123456789', 'Passionnée par les technologies.'),
('Bob', 'Martin', 'pass101', 'bob@example.com', '0987654321', 'Expert en analyse de données.'),
('Charlie', 'Durand', 'pass102', 'charlie@example.com', '0678912345', 'Consultant en finances avec 10 ans d\'expérience.');


INSERT INTO entreprise_offre (entreprise_id, offre_id) VALUES 
(1, 1),  -- L'entreprise 1 (Tech Corp) publie l'offre 1
(2, 2),  -- L'entreprise 2 (Finance Inc) publie l'offre 2
(1, 3);  -- L'entreprise 1 publie aussi l'offre 3


INSERT INTO recruteur_offre (recruteur_id, offre_id) VALUES 
(1, 1),  -- Le recruteur 1 gère l'offre 1
(2, 2),  -- Le recruteur 2 gère l'offre 2
(1, 3);  -- Le recruteur 1 gère aussi l'offre 3


INSERT INTO candidat_offre (candidat_id, offre_id) VALUES 
(1, 1),  -- Le candidat 1 (Alice) postule à l'offre 1
(2, 2),  -- Le candidat 2 (Bob) postule à l'offre 2
(3, 3),  -- Le candidat 3 (Charlie) postule à l'offre 3
(1, 3);  -- Le candidat 1 postule également à l'offre 3


-- Toutes les offres d'emploi
SELECT * FROM offre;

-- Toutes les offres d'emploi d'une ville (Paris)
SELECT * FROM offre WHERE city = "Paris";

-- Les informations de tous candidats qui ont postulé à une offre précise
SELECT * 
FROM candidat 
JOIN candidat_offre ON candidat.id = candidat_offre.candidat_id 
WHERE candidat_offre.offre_id = 3;

-- Les informations de tous les candidats qui ont postulé aux offres d'une entreprise
SELECT candidat.*
FROM candidat
JOIN candidat_offre ON candidat.id = candidat_offre.candidat_id
JOIN offre ON candidat_offre.offre_id = offre.id
JOIN entreprise_offre ON offre.id = entreprise_offre.offre_id
WHERE entreprise_offre.entreprise_id = 1;

