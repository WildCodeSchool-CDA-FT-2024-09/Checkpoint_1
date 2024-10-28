CREATE TABLE IF NOT EXISTS `companies` (
	`id` INTEGER NOT NULL,
	`name` TEXT NOT NULL,
	`recruiter_id` INTEGER NOT NULL,
	`description` TEXT NOT NULL,
FOREIGN KEY(`recruiter_id`) REFERENCES `recruiters`(`id`)
);
CREATE TABLE IF NOT EXISTS `offers` (
	`id` INTEGER NOT NULL,
	`location` TEXT NOT NULL,
	`company_id` INTEGER NOT NULL,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
FOREIGN KEY(`company_id`) REFERENCES `companies`(`id`)
);
CREATE TABLE IF NOT EXISTS `seekers` (
	`firstname` TEXT NOT NULL,
	`email` TEXT NOT NULL,
	`phone` TEXT NOT NULL,
	`bio` TEXT NOT NULL,
	`user_id` INTEGER NOT NULL,
	`id` INTEGER NOT NULL,
	`lastname` TEXT NOT NULL,
FOREIGN KEY(`user_id`) REFERENCES `users`(`id`)
);
CREATE TABLE IF NOT EXISTS `seeker_offer` (
	`offer_id` INTEGER NOT NULL,
	`seeker_id` INTEGER NOT NULL,
FOREIGN KEY(`offer_id`) REFERENCES `offers`(`id`),
FOREIGN KEY(`seeker_id`) REFERENCES `seekers`(`id`)
);
CREATE TABLE IF NOT EXISTS `users` (
	`id` INTEGER NOT NULL,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL,
	`role_id` INTEGER NOT NULL,
FOREIGN KEY(`role_id`) REFERENCES `roles`(`id`)
);
CREATE TABLE IF NOT EXISTS `recruiters` (
	`user_id` INTEGER NOT NULL,
	`id` INTEGER NOT NULL,
FOREIGN KEY(`user_id`) REFERENCES `users`(`id`)
);
CREATE TABLE IF NOT EXISTS `roles` (
	`label` TEXT NOT NULL,
	`id` INTEGER NOT NULL
);