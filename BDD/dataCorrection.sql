

-- Insertion des types d'utilisateurs
INSERT INTO user_type (id, type) VALUES
(1, 'admin'),
(2, 'employer'),
(3, 'candidate');

-- Insertion des utilisateurs avec des types d’utilisateurs associés
INSERT INTO user (id, user_type_id, password, login) VALUES
(1, 1, 'secureAdminPass', 'admin_user'),          -- admin
(2, 2, 'employer123', 'employer_co1'),            -- employer
(3, 2, 'employer123', 'employer_co2'),            -- employer
(4, 3, 'candidate123', 'jobseeker1'),             -- candidate
(5, 3, 'candidate123', 'jobseeker2'),             -- candidate
(6, 3, 'candidate123', 'jobseeker3'),             -- candidate
(7, 3, 'candidate123', 'jobseeker4'),             -- candidate
(8, 3, 'candidate123', 'jobseeker5');             -- candidate

-- Insertion des détails des utilisateurs candidats
INSERT INTO user_details (id, user_id, firstname, lastname, phone, email, resume) VALUES
(1, 4, 'Emma', 'Johnson', '555-1001', 'emma.johnson@example.com', 'Software engineer with 3 years of experience.'),
(2, 5, 'Liam', 'Brown', '555-1002', 'liam.brown@example.com', 'Digital marketing specialist, SEO expert.'),
(3, 6, 'Olivia', 'Williams', '555-1003', 'olivia.williams@example.com', 'Project manager, PMP certified.'),
(4, 7, 'Noah', 'Jones', '555-1004', 'noah.jones@example.com', 'Full stack developer, proficient in JavaScript.'),
(5, 8, 'Ava', 'Garcia', '555-1005', 'ava.garcia@example.com', 'Data analyst, experienced in Python and R.');

-- Insertion des entreprises
INSERT INTO company (id, user_id, name, description) VALUES
(1, 2, 'GreenTech Innovations', 'A company focused on sustainable technology solutions.'),
(2, 3, 'BlueWave Marketing', 'A digital marketing agency specializing in SEO and SEM.');

-- Insertion des offres d'emploi
INSERT INTO job (id, company_id, title, description, location) VALUES
(1, 1, 'Junior Software Developer', 'Assist in developing and maintaining software applications.', 'New York'),
(2, 1, 'Data Scientist', 'Analyze data to derive business insights.', 'San Francisco'),
(3, 2, 'Marketing Analyst', 'Conduct market research and analysis for clients.', 'Chicago'),
(4, 2, 'Social Media Manager', 'Manage social media accounts for various clients.', 'Los Angeles');

-- Insertion des candidatures d'emploi
INSERT INTO job_application (job_id, user_id, created_at) VALUES
(1, 4, julianday('now') - 5),
(1, 5, julianday('now') - 3),
(2, 6, julianday('now') - 7),
(3, 7, julianday('now') - 1),
(4, 8, julianday('now') - 2);




