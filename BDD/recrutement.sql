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

CREATE TABLE candidat_offre (
    candidat_id INT,
    offre_id INT,
    PRIMARY KEY (candidat_id, offre_id),
    FOREIGN KEY (candidat_id) REFERENCES candidat(id),
    FOREIGN KEY (offre_id) REFERENCES offre(id)
);
