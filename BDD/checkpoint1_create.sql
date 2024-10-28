CREATE TABLE IF NOT EXISTS `recruteur` (
	`id` int AUTO_INCREMENT NOT NULL,
	`login` varchar(255) NOT NULL UNIQUE,
	`mot_de_passe` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `candidats` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`login` varchar(255) NOT NULL UNIQUE,
	`mot_de_passe` varchar(255) NOT NULL,
	`nom` varchar(255) NOT NULL,
	`prenom` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL UNIQUE,
	`numero_telephone` varchar(255) NOT NULL,
	`teste_presentation` text NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `entreprises` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nom` varchar(255) NOT NULL,
	`recruteur_id` int NOT NULL,
	`description` text NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `offres` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`titre_post` varchar(255) NOT NULL,
	`descriptif_poste` varchar(255) NOT NULL,
	`ville_poste` varchar(255) NOT NULL,
	`entreprise_id` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `candidatures` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`candidat_id` int NOT NULL,
	`offre_id` int NOT NULL,
	PRIMARY KEY (`id`)
);



ALTER TABLE `entreprises` ADD CONSTRAINT `entreprises_fk2` FOREIGN KEY (`recruteur_id`) REFERENCES `recruteur`(`id`);
ALTER TABLE `offres` ADD CONSTRAINT `offres_fk4` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprises`(`id`);
ALTER TABLE `candidatures` ADD CONSTRAINT `candidatures_fk1` FOREIGN KEY (`candidat_id`) REFERENCES `candidats`(`id`);

ALTER TABLE `candidatures` ADD CONSTRAINT `candidatures_fk2` FOREIGN KEY (`offre_id`) REFERENCES `offres`(`id`);