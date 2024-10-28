CREATE TABLE IF NOT EXISTS `recruteur` (
	`id` INTEGER NOT NULL,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL,
	`id_entreprise` INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS `candidat` (
	`id` INTEGER NOT NULL,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL,
	`name` TEXT NOT NULL,
	`firstname` TEXT NOT NULL,
	`mail` TEXT NOT NULL,
	`phone` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`subscribed_to` TEXT NOT NULL,
FOREIGN KEY(`subscribed_to`) REFERENCES `offre`(`subscribers`)
);
CREATE TABLE IF NOT EXISTS `offre` (
	`id` INTEGER NOT NULL,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`id_entreprise` INTEGER NOT NULL,
FOREIGN KEY(`id_entreprise`) REFERENCES `entreprise`(`id`)
);
CREATE TABLE IF NOT EXISTS `entreprise` (
	`id` INTEGER NOT NULL,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`id_recruteur` INTEGER NOT NULL,
FOREIGN KEY(`id_recruteur`) REFERENCES `recruteur`(`id`)
);
CREATE TABLE IF NOT EXISTS `candidature` (
	`id_candidature` INTEGER NOT NULL,
	`id_candidat` INTEGER NOT NULL,
	`id_offre` INTEGER NOT NULL,
FOREIGN KEY(`id_candidat`) REFERENCES `candidat`(`id`),
FOREIGN KEY(`id_offre`) REFERENCES `offre`(`id`)
);