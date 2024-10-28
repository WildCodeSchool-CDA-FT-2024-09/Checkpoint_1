CREATE TABLE IF NOT EXISTS user (
	id INTEGER NOT NULL PRIMARY KEY,
	user_type_id INTEGER NOT NULL,
	password TEXT NOT NULL,
	login TEXT NOT NULL,
FOREIGN KEY(user_type_id) REFERENCES user_type(id)
);
CREATE TABLE IF NOT EXISTS user_type (
	id INTEGER NOT NULL PRIMARY KEY,
	type TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS user_details (
	id INTEGER NOT NULL PRIMARY KEY,
	user_id INTEGER NOT NULL,
	firstname TEXT NOT NULL,
	lastname TEXT NOT NULL,
	phone TEXT NOT NULL,
	email TEXT NOT NULL,
	resume TEXT NOT NULL,
FOREIGN KEY(user_id) REFERENCES user(id)
);
CREATE TABLE IF NOT EXISTS company (
	id INTEGER NOT NULL PRIMARY KEY,
	user_id INTEGER NOT NULL,
	name TEXT NOT NULL,
	description TEXT NOT NULL,
FOREIGN KEY(user_id) REFERENCES user(id)
);
CREATE TABLE IF NOT EXISTS job (
	id INTEGER NOT NULL PRIMARY KEY,
	company_id INTEGER NOT NULL,
	title TEXT NOT NULL,
	description TEXT NOT NULL,
	location TEXT NOT NULL,
FOREIGN KEY(company_id) REFERENCES company(id)
);
CREATE TABLE IF NOT EXISTS job_application (
	job_id INTEGER NOT NULL,
	user_id INTEGER NOT NULL,
	created_at REAL NOT NULL,
FOREIGN KEY(job_id) REFERENCES job(id),
FOREIGN KEY(user_id) REFERENCES user(id),
PRIMARY KEY(user_id,job_id)
);