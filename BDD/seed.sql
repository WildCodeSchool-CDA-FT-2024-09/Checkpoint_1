-- Recruiters
INSERT INTO user (username, password, user_type) VALUES ('recruiter1', 'password123', 'recruiter');
INSERT INTO user (username, password, user_type) VALUES ('recruiter2', 'password456', 'recruiter');
INSERT INTO user (username, password, user_type) VALUES ('recruiter3', 'password789', 'recruiter');
INSERT INTO user (username, password, user_type) VALUES ('recruiter4', 'password101', 'recruiter');
INSERT INTO user (username, password, user_type) VALUES ('recruiter5', 'password112', 'recruiter');
INSERT INTO user (username, password, user_type) VALUES ('recruiter6', 'password113', 'recruiter');
INSERT INTO user (username, password, user_type) VALUES ('recruiter7', 'password114', 'recruiter');
INSERT INTO user (username, password, user_type) VALUES ('recruiter8', 'password115', 'recruiter');
INSERT INTO user (username, password, user_type) VALUES ('recruiter9', 'password116', 'recruiter');
INSERT INTO user (username, password, user_type) VALUES ('recruiter10', 'password117', 'recruiter');

-- Candidates
INSERT INTO user (username, password, user_type) VALUES ('candidate1', 'password123', 'candidate');
INSERT INTO user (username, password, user_type) VALUES ('candidate2', 'password456', 'candidate');
INSERT INTO user (username, password, user_type) VALUES ('candidate3', 'password789', 'candidate');
INSERT INTO user (username, password, user_type) VALUES ('candidate4', 'password101', 'candidate');
INSERT INTO user (username, password, user_type) VALUES ('candidate5', 'password112', 'candidate');
INSERT INTO user (username, password, user_type) VALUES ('candidate6', 'password113', 'candidate');
INSERT INTO user (username, password, user_type) VALUES ('candidate7', 'password114', 'candidate');
INSERT INTO user (username, password, user_type) VALUES ('candidate8', 'password115', 'candidate');
INSERT INTO user (username, password, user_type) VALUES ('candidate9', 'password116', 'candidate');
INSERT INTO user (username, password, user_type) VALUES ('candidate10', 'password117', 'candidate');

-- Inserting recruiters
INSERT INTO recruiter (user_id, username) VALUES (1, 'recruiter1');
INSERT INTO recruiter (user_id, username) VALUES (2, 'recruiter2');
INSERT INTO recruiter (user_id, username) VALUES (3, 'recruiter3');
INSERT INTO recruiter (user_id, username) VALUES (4, 'recruiter4');
INSERT INTO recruiter (user_id, username) VALUES (5, 'recruiter5');
INSERT INTO recruiter (user_id, username) VALUES (6, 'recruiter6');
INSERT INTO recruiter (user_id, username) VALUES (7, 'recruiter7');
INSERT INTO recruiter (user_id, username) VALUES (8, 'recruiter8');
INSERT INTO recruiter (user_id, username) VALUES (9, 'recruiter9');
INSERT INTO recruiter (user_id, username) VALUES (10, 'recruiter10');

-- Inserting candidates
INSERT INTO candidate (user_id, username, first_name, last_name, phone_number, bio) 
VALUES (11, 'candidate1', 'Alice', 'Smith', '1234567890', 'Experienced software engineer looking for new challenges.');

INSERT INTO candidate (user_id, username, first_name, last_name, phone_number, bio) 
VALUES (12, 'candidate2', 'Bob', 'Jones', '2345678901', 'Passionate about data science and analytics.');

INSERT INTO candidate (user_id, username, first_name, last_name, phone_number, bio) 
VALUES (13, 'candidate3', 'Charlie', 'Brown', '3456789012', 'Marketing expert with a knack for digital campaigns.');

INSERT INTO candidate (user_id, username, first_name, last_name, phone_number, bio) 
VALUES (14, 'candidate4', 'David', 'Williams', '4567890123', 'Creative graphic designer with a strong portfolio.');

INSERT INTO candidate (user_id, username, first_name, last_name, phone_number, bio) 
VALUES (15, 'candidate5', 'Eva', 'Johnson', '5678901234', 'HR specialist with experience in talent acquisition.');

INSERT INTO candidate (user_id, username, first_name, last_name, phone_number, bio) 
VALUES (16, 'candidate6', 'Frank', 'Garcia', '6789012345', 'Detail-oriented accountant with a passion for numbers.');

INSERT INTO candidate (user_id, username, first_name, last_name, phone_number, bio) 
VALUES (17, 'candidate7', 'Grace', 'Martinez', '7890123456', 'Software tester with a keen eye for detail.');

INSERT INTO candidate (user_id, username, first_name, last_name, phone_number, bio) 
VALUES (18, 'candidate8', 'Hannah', 'Hernandez', '8901234567', 'Customer service representative with excellent communication skills.');

INSERT INTO candidate (user_id, username, first_name, last_name, phone_number, bio) 
VALUES (19, 'candidate9', 'Ian', 'Lopez', '9012345678', 'Sales manager with proven track record in B2B sales.');

INSERT INTO candidate (user_id, username, first_name, last_name, phone_number, bio) 
VALUES (20, 'candidate10', 'Jane', 'Davis', '0123456789', 'Project manager with extensive experience in agile methodologies.');

-- Inserting companies
INSERT INTO company (name, description, user_id) 
VALUES ('Tech Solutions', 'A leading software development company specializing in innovative web applications.', 1);

INSERT INTO company (name, description, user_id) 
VALUES ('Data Insights', 'Specialists in data analysis and machine learning, providing data-driven solutions.', 2);

INSERT INTO company (name, description, user_id) 
VALUES ('Creative Agency', 'A full-service creative agency focused on branding and digital marketing.', 3);

INSERT INTO company (name, description, user_id) 
VALUES ('Health Innovations', 'Developing cutting-edge healthcare technologies to improve patient outcomes.', 4);

INSERT INTO company (name, description, user_id) 
VALUES ('Eco-Friendly Solutions', 'Promoting sustainability through eco-friendly products and services.', 5);

-- Inserting job offers
INSERT INTO job_offer (title, description, city, company_id) 
VALUES ('Software Engineer', 'Develop and maintain web applications using modern frameworks.', 'Paris', 1);

INSERT INTO job_offer (title, description, city, company_id) 
VALUES ('Data Scientist', 'Analyze complex datasets and build predictive models.', 'Paris', 2);

INSERT INTO job_offer (title, description, city, company_id) 
VALUES ('Graphic Designer', 'Create visual content for various media and campaigns.', 'London', 3);

INSERT INTO job_offer (title, description, city, company_id) 
VALUES ('Project Manager', 'Lead project teams to deliver high-quality results on time.', 'London', 4);

INSERT INTO job_offer (title, description, city, company_id) 
VALUES ('Sales Manager', 'Manage sales teams and develop strategies to increase revenue.', 'Clisson', 5);

-- Inserting applications
INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (11, 1, datetime('now'));

INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (12, 2, datetime('now'));

INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (13, 3, datetime('now'));

INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (14, 4, datetime('now'));

INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (15, 5, datetime('now'));
INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (16, 1, datetime('now')); 

INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (17, 1, datetime('now'));

INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (18, 1, datetime('now')); 


INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (19, 2, datetime('now'));

INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (20, 2, datetime('now')); 

INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (19, 3, datetime('now'));

INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (11, 3, datetime('now')); 
INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (12, 4, datetime('now'));

INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (15, 4, datetime('now')); 


INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (11, 5, datetime('now')); 

INSERT INTO application (candidate_id, job_offer_id, applied_on) 
VALUES (12, 5, datetime('now')); 