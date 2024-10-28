CREATE TABLE IF NOT EXISTS `recruiter` (
	`id` INTEGER NOT NULL,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `job` (
	`id` INTEGER NOT NULL,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`buisness_id` INTEGER NOT NULL,
FOREIGN KEY(`buisness_id`) REFERENCES `buisness`(`id`)
);
CREATE TABLE IF NOT EXISTS `candidate` (
	`id` INTEGER NOT NULL,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL,
	`firstname` TEXT NOT NULL,
	`lastname` TEXT NOT NULL,
	`email` TEXT NOT NULL,
	`phone` INTEGER NOT NULL,
	`presentation_text` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `job_candidate` (
	`id` INTEGER NOT NULL,
	`job_id` INTEGER NOT NULL,
	`candidate_id` INTEGER NOT NULL,
FOREIGN KEY(`job_id`) REFERENCES `job`(`id`),
FOREIGN KEY(`candidate_id`) REFERENCES `candidate`(`id`)
);
CREATE TABLE IF NOT EXISTS `buisness` (
	`id` INTEGER NOT NULL,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`recruiter_id` INTEGER NOT NULL,
FOREIGN KEY(`recruiter_id`) REFERENCES `recruiter`(`id`)
);