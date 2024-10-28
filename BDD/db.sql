BEGIN;

CREATE TABLE IF NOT EXISTS `Recruteur` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` TEXT NOT NULL UNIQUE,
	`mot_de_passe` TEXT NOT NULL UNIQUE,
	`entreprise_id` INTEGER NOT NULL,
FOREIGN KEY(`entreprise_id`) REFERENCES `Entreprise`(`id`)
);
CREATE TABLE IF NOT EXISTS `Candidat` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` TEXT NOT NULL UNIQUE,
	`mot_de_passe` TEXT NOT NULL UNIQUE,
	`nom` TEXT NOT NULL,
	`prénom` TEXT NOT NULL,
	`email` TEXT UNIQUE NOT NULL,
	`num_téléphone` INTEGER UNIQUE NOT NULL,
	`texte_présentation` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `Entreprise` (
	`id` integer primary key NOT NULL UNIQUE,
	`nom` TEXT NOT NULL UNIQUE,
	`description` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `Offre` (
	`id` integer primary key NOT NULL UNIQUE,
	`titre_du_poste` TEXT NOT NULL,
	`description_poste` TEXT NOT NULL,
	`ville_poste` TEXT NOT NULL,
	`entreprise_id` INTEGER NOT NULL,
	`recruteur_id` INTEGER NOT NULL,
FOREIGN KEY(`entreprise_id`) REFERENCES `Entreprise`(`id`),
FOREIGN KEY(`recruteur_id`) REFERENCES `Recruteur`(`id`)
);
CREATE TABLE IF NOT EXISTS `Table_candidature` (
	`id` integer primary key NOT NULL UNIQUE,
	`candidat_id` INTEGER NOT NULL,
	`offre_id` INTEGER NOT NULL,
FOREIGN KEY(`candidat_id`) REFERENCES `Candidat`(`id`),
FOREIGN KEY(`offre_id`) REFERENCES `Offre`(`id`)
);

COMMIT;