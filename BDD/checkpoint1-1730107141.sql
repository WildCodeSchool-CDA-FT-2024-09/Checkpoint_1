CREATE TABLE IF NOT EXISTS `recruteur` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` TEXT NOT NULL UNIQUE,
	`password` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `candidat` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` TEXT NOT NULL UNIQUE,
	`password` TEXT NOT NULL,
	`lastname` TEXT NOT NULL,
	`firstname` TEXT NOT NULL,
	`email` TEXT NOT NULL UNIQUE,
	`telephone_number` TEXT NOT NULL,
	`presentation_text` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `company` (
	`id` integer primary key NOT NULL UNIQUE,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`recruteur_id` INTEGER NOT NULL,
FOREIGN KEY(`recruteur_id`) REFERENCES `recruteur`(`id`)
);
CREATE TABLE IF NOT EXISTS `job_offer` (
	`id` integer primary key NOT NULL UNIQUE,
	`job_title` TEXT NOT NULL,
	`job_description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`company_id` INTEGER NOT NULL,
FOREIGN KEY(`company_id`) REFERENCES `company`(`id`)
);
CREATE TABLE IF NOT EXISTS `candidature` (
	`id` integer primary key NOT NULL UNIQUE,
	`candidat_id` INTEGER NOT NULL,
	`job_offer_id` INTEGER NOT NULL,
FOREIGN KEY(`candidat_id`) REFERENCES `candidat`(`id`),
FOREIGN KEY(`job_offer_id`) REFERENCES `job_offer`(`id`)
);