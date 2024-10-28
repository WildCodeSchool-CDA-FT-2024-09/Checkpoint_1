CREATE TABLE IF NOT EXISTS `user` (
	`id` INTEGER NOT NULL,
	`user_type_id` INTEGER NOT NULL,
	`password` TEXT NOT NULL,
	`login` TEXT NOT NULL,
FOREIGN KEY(`user_type_id`) REFERENCES `user_type`(`id`),
FOREIGN KEY(`password`) REFERENCES `klasa`(`id`),
FOREIGN KEY(`login`) REFERENCES `fornecedor`(`id`)
);
CREATE TABLE IF NOT EXISTS `user_type` (
	`id` INTEGER NOT NULL,
	`type` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `user_details` (
	`id` INTEGER NOT NULL,
	`user_id` INTEGER NOT NULL,
	`firstname` TEXT NOT NULL,
	`lastname` TEXT NOT NULL,
	`phone` TEXT NOT NULL,
	`email` TEXT NOT NULL,
	`resume` TEXT NOT NULL,
FOREIGN KEY(`user_id`) REFERENCES `user`(`id`)
);
CREATE TABLE IF NOT EXISTS `company` (
	`id` INTEGER NOT NULL,
	`user_id` INTEGER NOT NULL,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
FOREIGN KEY(`user_id`) REFERENCES `user`(`id`)
);
CREATE TABLE IF NOT EXISTS `job` (
	`id` INTEGER NOT NULL,
	`company_id` INTEGER NOT NULL,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`location` TEXT NOT NULL,
FOREIGN KEY(`company_id`) REFERENCES `company`(`id`)
);
CREATE TABLE IF NOT EXISTS `job_application` (
	`job_id` INTEGER NOT NULL,
	`user_id` INTEGER NOT NULL,
	`created_at` REAL NOT NULL,
	`job` INTEGER NOT NULL,
	`id` INTEGER NOT NULL,
FOREIGN KEY(`job_id`) REFERENCES `job`(`id`),
FOREIGN KEY(`user_id`) REFERENCES `user`(`id`)
);