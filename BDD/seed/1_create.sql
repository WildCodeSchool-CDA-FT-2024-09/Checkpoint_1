CREATE TABLE IF NOT EXISTS `company` (
	`id` integer primary key NOT NULL,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS `job_listing` (
	`id` integer primary key NOT NULL,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`location` TEXT NOT NULL,
	`id_company` INTEGER NOT NULL,
	FOREIGN KEY(`id_company`) REFERENCES `company`(`id`)
);

CREATE TABLE IF NOT EXISTS `user` (
	`id` integer primary key NOT NULL,
	`username` TEXT NOT NULL,
	`password` TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS `recruiter` (
	`id_company` INTEGER NOT NULL UNIQUE,
	`id_recruiter` INTEGER NOT NULL UNIQUE,
	FOREIGN KEY(`id_company`) REFERENCES `company`(`id`),
	FOREIGN KEY(`id_recruiter`) REFERENCES `user`(`id`)
);

CREATE TABLE IF NOT EXISTS `candidate` (
	`id_user` INTEGER NOT NULL UNIQUE,
	`last_name` TEXT NOT NULL,
	`first_name` TEXT NOT NULL,
	`email` TEXT NOT NULL,
	`phone_number` TEXT NOT NULL,
	`personal_statement` TEXT NOT NULL,
	FOREIGN KEY(`id_user`) REFERENCES `user`(`id`)
);

CREATE TABLE IF NOT EXISTS `applications` (
	`id_candidate` INTEGER NOT NULL,
	`id_job_listing` INTEGER NOT NULL,
	`id` integer primary key NOT NULL,
	`created_at` REAL NOT NULL,
	FOREIGN KEY(`id_candidate`) REFERENCES `candidate`(`id_user`),
	FOREIGN KEY(`id_job_listing`) REFERENCES `job_listing`(`id`)
);