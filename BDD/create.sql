-- Drop existing tables to avoid conflicts
DROP TABLE IF EXISTS application;
DROP TABLE IF EXISTS job_offer;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS candidate;
DROP TABLE IF EXISTS recruiter;
DROP TABLE IF EXISTS user;

-- Create tables (Make sure to include the CREATE TABLE statements here if you haven't already)
CREATE TABLE IF NOT EXISTS user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    user_type VARCHAR(20) NOT NULL  -- Added user_type for differentiating users
);

CREATE TABLE IF NOT EXISTS recruiter (
    user_id INTEGER NOT NULL UNIQUE,
    username VARCHAR(50) NOT NULL,
    FOREIGN KEY(user_id) REFERENCES user(id)
);

CREATE TABLE IF NOT EXISTS company (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    user_id INTEGER NOT NULL UNIQUE,
    FOREIGN KEY(user_id) REFERENCES recruiter(recruiter_id)
);

CREATE TABLE IF NOT EXISTS candidate (
    user_id INTEGER NOT NULL UNIQUE,
    username VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    bio TEXT NOT NULL,
    candidate_id INTEGER NOT NULL,
    FOREIGN KEY(user_id) REFERENCES user(id)
);

CREATE TABLE IF NOT EXISTS job_offer (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    city VARCHAR(50) NOT NULL,
    company_id INTEGER NOT NULL,
    FOREIGN KEY(company_id) REFERENCES company(id)
);

CREATE TABLE IF NOT EXISTS application (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    candidate_id INTEGER NOT NULL,
    job_offer_id INTEGER NOT NULL,
    applied_on REAL NOT NULL,
    FOREIGN KEY(candidate_id) REFERENCES candidate(candidate_id),
    FOREIGN KEY(job_offer_id) REFERENCES job_offer(id)
);