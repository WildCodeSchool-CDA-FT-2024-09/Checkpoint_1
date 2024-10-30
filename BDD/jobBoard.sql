CREATE TABLE IF NOT EXISTS `user` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` INTEGER NOT NULL UNIQUE,
	`password` TEXT NOT NULL UNIQUE,
	`lastname` TEXT NOT NULL,
	`firstname` TEXT NOT NULL,
	`email` TEXT NOT NULL,
	`phone` TEXT NOT NULL,
	`presentation` TEXT,
	`role_id` INTEGER NOT NULL,
FOREIGN KEY(`role_id`) REFERENCES `role`(`id`)
);
CREATE TABLE IF NOT EXISTS `role` (
	`id` integer primary key NOT NULL UNIQUE,
	`label` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `company` (
	`id` integer primary key NOT NULL UNIQUE,
	`user_id` INTEGER NOT NULL,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
FOREIGN KEY(`user_id`) REFERENCES `user`(`id`)
);
CREATE TABLE IF NOT EXISTS `jobOffer` (
	`id` integer primary key NOT NULL UNIQUE,
	`company_id` INTEGER NOT NULL,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
FOREIGN KEY(`company_id`) REFERENCES `company`(`id`)
);
CREATE TABLE IF NOT EXISTS `application` (
	`user_id` INTEGER NOT NULL,
	`jobOffer_id` INTEGER NOT NULL,
	`id` INTEGER NOT NULL,
FOREIGN KEY(`user_id`) REFERENCES `user`(`id`),
FOREIGN KEY(`jobOffer_id`) REFERENCES `jobOffer`(`id`)
);