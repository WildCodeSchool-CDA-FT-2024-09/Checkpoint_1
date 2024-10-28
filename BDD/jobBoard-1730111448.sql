CREATE TABLE IF NOT EXISTS `Candidate` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` TEXT NOT NULL DEFAULT '30',
	`password` TEXT NOT NULL DEFAULT '16',
	`lastname` TEXT NOT NULL DEFAULT '50',
	`firstname` TEXT NOT NULL DEFAULT '50',
	`phone` TEXT NOT NULL DEFAULT '15',
	`presentation` TEXT NOT NULL DEFAULT '200'
);
CREATE TABLE IF NOT EXISTS `JobOffer` (
	`id` integer primary key NOT NULL UNIQUE,
	`description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`recruiter_id` INTEGER NOT NULL,
FOREIGN KEY(`recruiter_id`) REFERENCES `recruiter`(`id`)
);
CREATE TABLE IF NOT EXISTS `recruiter` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL DEFAULT '16',
	`company_id` INTEGER NOT NULL,
FOREIGN KEY(`password`) REFERENCES `company`(`id`)
);
CREATE TABLE IF NOT EXISTS `Candidate_JobOffer` (
	`Candidate_id` INTEGER NOT NULL,
	`JobOffer_id` INTEGER NOT NULL,
	`date` TEXT NOT NULL,
	`status` TEXT NOT NULL,
FOREIGN KEY(`Candidate_id`) REFERENCES `Candidate`(`id`),
FOREIGN KEY(`JobOffer_id`) REFERENCES `JobOffer`(`id`)
);
CREATE TABLE IF NOT EXISTS `company` (
	`id` integer primary key NOT NULL UNIQUE,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL
);