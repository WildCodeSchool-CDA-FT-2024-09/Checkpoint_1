CREATE TABLE IF NOT EXISTS `candidate` (
	`description` TEXT NOT NULL,
	`id` INTEGER NOT NULL,
	`firstname` TEXT NOT NULL,
	`lastname` TEXT NOT NULL,
	`phone` TEXT NOT NULL,
	`email` TEXT NOT NULL,
	`password` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `enterprise` (
	`id` INTEGER NOT NULL,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `offer` (
	`id` INTEGER NOT NULL,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`enterprise_id` INTEGER NOT NULL,
FOREIGN KEY(`enterprise_id`) REFERENCES `enterprise`(`id`)
);
CREATE TABLE IF NOT EXISTS `candidate_offer` (
	`offer_id` INTEGER NOT NULL,
	`candidate_id` INTEGER NOT NULL,
FOREIGN KEY(`offer_id`) REFERENCES `offer`(`id`),
FOREIGN KEY(`candidate_id`) REFERENCES `candidate`(`id`)
);
CREATE TABLE IF NOT EXISTS `recruiter` (
	`id` INTEGER NOT NULL,
	`email` TEXT NOT NULL,
	`mot_de_passe` TEXT NOT NULL,
	`enterprise_id` INTEGER NOT NULL,
FOREIGN KEY(`enterprise_id`) REFERENCES `enterprise`(`id`)
);