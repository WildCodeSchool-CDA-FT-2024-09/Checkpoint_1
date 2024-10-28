BEGIN;

CREATE TABLE IF NOT EXISTS `Recruiter` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` TEXT NOT NULL UNIQUE,
	`password` TEXT NOT NULL UNIQUE,
	`company_id` INTEGER NOT NULL,
	FOREIGN KEY(`company_id`) REFERENCES `Company`(`id`)
);

CREATE TABLE IF NOT EXISTS `Candidate` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` TEXT NOT NULL UNIQUE,
	`password` TEXT NOT NULL UNIQUE,
	`last_name` TEXT NOT NULL,
	`first_name` TEXT NOT NULL,
	`email` TEXT UNIQUE NOT NULL,
	`phone_number` INTEGER UNIQUE NOT NULL,
	`presentation_text` TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS `Company` (
	`id` integer primary key NOT NULL UNIQUE,
	`name` TEXT NOT NULL UNIQUE,
	`description` TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS `JobOffer` (
	`id` integer primary key NOT NULL UNIQUE,
	`job_title` TEXT NOT NULL,
	`job_description` TEXT NOT NULL,
	`job_city` TEXT NOT NULL,
	`company_id` INTEGER NOT NULL,
	`recruiter_id` INTEGER NOT NULL,
	FOREIGN KEY(`company_id`) REFERENCES `Company`(`id`),
	FOREIGN KEY(`recruiter_id`) REFERENCES `Recruiter`(`id`)
);

CREATE TABLE IF NOT EXISTS `Application` (
	`id` integer primary key NOT NULL UNIQUE,
	`candidate_id` INTEGER NOT NULL,
	`job_offer_id` INTEGER NOT NULL,
	FOREIGN KEY(`candidate_id`) REFERENCES `Candidate`(`id`),
	FOREIGN KEY(`job_offer_id`) REFERENCES `JobOffer`(`id`)
);

COMMIT;
