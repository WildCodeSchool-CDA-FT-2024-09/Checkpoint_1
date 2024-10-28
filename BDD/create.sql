CREATE TABLE IF NOT EXISTS `company` (
	`id` INTEGER PRIMARY KEY AUTOINCREMENT,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS `recruiter` (
	`id` INTEGER PRIMARY KEY AUTOINCREMENT,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL,
	`company_id` INTEGER NOT NULL,
	FOREIGN KEY(`company_id`) REFERENCES `company`(`id`)
);

CREATE TABLE IF NOT EXISTS `job_offer` (
	`id` INTEGER PRIMARY KEY AUTOINCREMENT,
	`job_title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`company_id` INTEGER NOT NULL,
	FOREIGN KEY(`company_id`) REFERENCES `company`(`id`)
);

CREATE TABLE IF NOT EXISTS `candidate` (
	`id` INTEGER PRIMARY KEY AUTOINCREMENT,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL,
	`first_name` TEXT NOT NULL,
	`last_name` TEXT NOT NULL,
	`email` TEXT NOT NULL,
	`phone_number` TEXT NOT NULL,
	`presentation_text` TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS `application` (
	`id` INTEGER PRIMARY KEY AUTOINCREMENT,
	`job_id` INTEGER NOT NULL,
	`candidate_id` INTEGER NOT NULL,
	FOREIGN KEY (`job_id`) REFERENCES `job_offer`(`id`),
	FOREIGN KEY (`candidate_id`) REFERENCES `candidate`(`id`),
	UNIQUE (`job_id`, `candidate_id`)
);


