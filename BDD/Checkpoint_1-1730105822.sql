DROP TABLE IF EXISTS `recruiter`;
DROP TABLE IF EXISTS `candidate`;
DROP TABLE IF EXISTS `company`;
DROP TABLE IF EXISTS `offer`;
DROP TABLE IF EXISTS `candidate_offer`;

CREATE TABLE `recruiter` (
	`id` integer primary key NOT NULL,
	`email` TEXT NOT NULL UNIQUE,
	`password` TEXT NOT NULL
);
CREATE TABLE `candidate` (
	`id` integer primary key NOT NULL UNIQUE,
	`email` TEXT NOT NULL UNIQUE,
	`password` TEXT NOT NULL,
	`lastname` TEXT NOT NULL,
	`firstname` TEXT NOT NULL,
	`contact_email` TEXT NOT NULL,
	`phone_number` TEXT,
	`bio` TEXT NOT NULL
);
CREATE TABLE `company` (
	`id` integer primary key NOT NULL UNIQUE,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`recruiter_id` INTEGER NOT NULL,
FOREIGN KEY(`recruiter_id`) REFERENCES `recruiter`(`id`)
);
CREATE TABLE `offer` (
	`id` integer primary key NOT NULL UNIQUE,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`company_id` INTEGER NOT NULL,
FOREIGN KEY(`company_id`) REFERENCES `company`(`id`)
);
CREATE TABLE `candidate_offer` (
	`id` integer primary key NOT NULL UNIQUE,
	`offer_id` INTEGER NOT NULL,
	`candidate_id` INTEGER NOT NULL,
FOREIGN KEY(`offer_id`) REFERENCES `offer`(`id`),
FOREIGN KEY(`candidate_id`) REFERENCES `candidate`(`id`)
);

insert into recruiter (id, email, password) values (1, 'bbiddwell0@army.mil', '$2a$04$xCUzuQhVtinMt.HP5.JhyOl4Taf3PhEU2CP8voAMcZDqyfT2BBtjm');
insert into recruiter (id, email, password) values (2, 'kspary1@wix.com', '$2a$04$ttVqjChq9GQA9YRUF1hQH.pbFSgkkYh/7OShF5nRlJYwf9Qo2xAla');
insert into recruiter (id, email, password) values (3, 'gmartyn2@reverbnation.com', '$2a$04$JP4ItQjrCN7fMNUSmo0G/Okao/hmprIgbZdarmobvz0T1lHM/osm6');
insert into recruiter (id, email, password) values (4, 'vliddon3@guardian.co.uk', '$2a$04$5EFpVUwEli.vxzBjEuoUKeQDy7LkaiYWRwIZfsqWOA4xJRoeJh4aq');
insert into recruiter (id, email, password) values (5, 'lvonasek4@utexas.edu', '$2a$04$n45X2I/85xcWSrRnyXh35.EPz1Ks.jRIGfFiDmY0mSL9bHj6q9/3m');
insert into recruiter (id, email, password) values (6, 'adiable5@instagram.com', '$2a$04$TXhqDsWgtRm1Wwc.IKxL2.tsd/Jam6cqQaMv8w0RAea3j4yhdamjm');
insert into recruiter (id, email, password) values (7, 'hdarkins6@utexas.edu', '$2a$04$Ba6OIcOBL1dnmKtKCPyAze9vVcQniUw/7OsWhsVZCOR/HPsUBwVnC');
insert into recruiter (id, email, password) values (8, 'wbartoszek7@nature.com', '$2a$04$eJvmjkRM5sg2ltFxzqKXOe3Erh6BLc/AsHc9BRVl.zSAXYSOT8Jym');
insert into recruiter (id, email, password) values (9, 'astraun8@blogger.com', '$2a$04$lk/9UUTqCLR/Jci.VHz2yel/oGojVtzg7qOQuvreSdrL3Ygn/8Ua6');
insert into recruiter (id, email, password) values (10, 'gguerro9@spiegel.de', '$2a$04$ZOU92HNrhxulO6uXLXhCieWbwZiGzCNrI3fDlAJky7bkt7hA9iKnG');

insert into candidate (id, email, password, lastname, firstname, contact_email, phone_number, bio) values (1, 'emacgillicuddy0@naver.com', '$2a$04$JNR2lQ01.Pk05P2Iy4FG8O9dAL6mRT2yJZIP0cmhx5RCJncmhFPWq', 'MacGillicuddy', 'Desirée', 'amacgillicuddy0@de.vu', 0770979095, 'Horizontal background leverage');
insert into candidate (id, email, password, lastname, firstname, contact_email, phone_number, bio) values (2, 'qaubery1@exblog.jp', '$2a$04$0at1unBYQleJVC6LoJe4Xu2oBouqQ6mw04wnnYiyaxRuDCGVWRnJO', 'Aubery', 'Gaëlle', 'iaubery1@independent.co.uk', 0725494036, 'Horizontal discrete standardization');
insert into candidate (id, email, password, lastname, firstname, contact_email, phone_number, bio) values (3, 'slittle2@live.com', '$2a$04$.NJCvQEPZS2MaqUkaED/lel9ikObjdcZpYy7f70hX/ZaSH816jw.C', 'Little', 'Åslög', 'clittle2@archive.org', null, 'Triple-buffered 24 hour utilisation');
insert into candidate (id, email, password, lastname, firstname, contact_email, phone_number, bio) values (4, 'dgooch3@yolasite.com', '$2a$04$VODE5WU6CU4GoNrnDG.vT.3wU8NEv3ZaOGO.ow6n10Ue8rQKrmkua', 'Gooch', 'Vénus', 'kgooch3@indiatimes.com', 0755298164, 'Persistent content-based concept');
insert into candidate (id, email, password, lastname, firstname, contact_email, phone_number, bio) values (5, 'rcansdale4@cbc.ca', '$2a$04$U.2Z5.yhi5GSOZ/AYP4IruNsNs/Dk4S/0TaEY8ut/OVN02ZPZErT2', 'Cansdale', 'Bérengère', 'rcansdale4@deliciousdays.com', 0680537696, 'Re-engineered stable focus group');
insert into candidate (id, email, password, lastname, firstname, contact_email, phone_number, bio) values (6, 'hchanson5@t.co', '$2a$04$sp5Ydxux3kNJc1tGIS5XgerEo8TILwxRi9l9QxuL7AqwJ6.TLqgK2', 'Chanson', 'Thérèsa', 'achanson5@skyrock.com', 614227230, 'Multi-lateral exuding knowledge user');
insert into candidate (id, email, password, lastname, firstname, contact_email, phone_number, bio) values (7, 'shutcheon6@phpbb.com', '$2a$04$lEROvNn.Q.bZPBQ6HziLOeEdYAKAQWZBNY16RYLpvxG5Lk/DXm9Zy', 'Hutcheon', 'Maï', 'ehutcheon6@ifeng.com', 0664302229, 'Fundamental tertiary throughput');
insert into candidate (id, email, password, lastname, firstname, contact_email, phone_number, bio) values (8, 'erasp7@canalblog.com', '$2a$04$1wiqyWhjUQyL72RtlISiEOXhrkLjYTGmEyaoaMW.MH/6d6NT2KbZu', 'Rasp', 'Annotés', 'arasp7@domainmarket.com', null, 'Cross-platform needs-based paradigm');
insert into candidate (id, email, password, lastname, firstname, contact_email, phone_number, bio) values (9, 'rpiell8@google.com.au', '$2a$04$aqvWuDJVmjJAea4Qm7GHeOSGIKL9KaLb7.oP/H6p4DK8Iqg5KgoqW', 'Piell', 'Styrbjörn', 'gpiell8@sphinn.com', 0786055921, 'Centralized background strategy');
insert into candidate (id, email, password, lastname, firstname, contact_email, phone_number, bio) values (10, 'hmaccostigan9@google.com.au', '$2a$04$LgAX2SxHWUnlPE..DuSd8eJ9ROK90c0EutY4E3y11gPbJ5c.BKAw6', 'MacCostigan', 'Mélia', 'emaccostigan9@cisco.com', 0694565445, 'Persevering scalable structure');

insert into company (id, name, description, recruiter_id) values (1, 'Omba', 'Optional fresh-thinking encryption', 1);
insert into company (id, name, description, recruiter_id) values (2, 'Aimbu', 'Multi-layered asymmetric installation', 2);
insert into company (id, name, description, recruiter_id) values (3, 'Browsedrive', 'Enterprise-wide grid-enabled conglomeration', 3);
insert into company (id, name, description, recruiter_id) values (4, 'Jazzy', 'Up-sized optimal paradigm', 4);
insert into company (id, name, description, recruiter_id) values (5, 'Jabberbean', 'Multi-lateral zero administration circuit', 5);
insert into company (id, name, description, recruiter_id) values (6, 'Thoughtsphere', 'Digitized exuding knowledge user', 6);
insert into company (id, name, description, recruiter_id) values (7, 'Teklist', 'Centralized eco-centric capacity', 7);
insert into company (id, name, description, recruiter_id) values (8, 'Livetube', 'Multi-lateral bandwidth-monitored artificial intelligence', 8);
insert into company (id, name, description, recruiter_id) values (9, 'Jabbertype', 'Compatible bandwidth-monitored installation', 9);
insert into company (id, name, description, recruiter_id) values (10, 'Voolith', 'User-centric content-based circuit', 10);

insert into offer (id, title, description, city, company_id) values (1, 'Administrative Assistant II', 'Secured modular architecture', 'Paris', 1);
insert into offer (id, title, description, city, company_id) values (2, 'Senior Financial Analyst', 'Reactive clear-thinking leverage', 'Paris', 2);
insert into offer (id, title, description, city, company_id) values (3, 'Programmer Analyst II', 'Cloned system-worthy help-desk', 'Ortiga', 3);
insert into offer (id, title, description, city, company_id) values (4, 'Human Resources Assistant III', 'Cloned hybrid hardware', 'Şirvan', 1);
insert into offer (id, title, description, city, company_id) values (5, 'GIS Technical Architect', 'Cloned fresh-thinking secured line', 'Huangyang', 5);
insert into offer (id, title, description, city, company_id) values (6, 'Senior Cost Accountant', 'Right-sized didactic productivity', 'Paris', 6);
insert into offer (id, title, description, city, company_id) values (7, 'Software Consultant', 'Customizable encompassing array', 'Paris', 7);
insert into offer (id, title, description, city, company_id) values (8, 'Nurse Practicioner', 'Stand-alone transitional collaboration', 'Achiaman', 1);
insert into offer (id, title, description, city, company_id) values (9, 'Director of Sales', 'Business-focused full-range concept', 'Los Charrúas', 1);
insert into offer (id, title, description, city, company_id) values (10, 'Marketing Assistant', 'Devolved next generation knowledge user', 'Miliangju', 10);

insert into candidate_offer (id, offer_id, candidate_id) values (1, 1, 1);
insert into candidate_offer (id, offer_id, candidate_id) values (2, 1, 2);
insert into candidate_offer (id, offer_id, candidate_id) values (3, 3, 3);
insert into candidate_offer (id, offer_id, candidate_id) values (4, 4, 4);
insert into candidate_offer (id, offer_id, candidate_id) values (5, 5, 5);
insert into candidate_offer (id, offer_id, candidate_id) values (6, 6, 6);
insert into candidate_offer (id, offer_id, candidate_id) values (7, 7, 7);
insert into candidate_offer (id, offer_id, candidate_id) values (8, 1, 8);
insert into candidate_offer (id, offer_id, candidate_id) values (9, 9, 9);
insert into candidate_offer (id, offer_id, candidate_id) values (10, 10, 10);