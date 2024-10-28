insert into roles (id, label) values (1, "Recruteur");
insert into roles (id, label) values (2, "Candidat");

insert into users (id, login, password, role_id) values (1, 'bogara0', '$2a$04$IIXH7BFHaiOklzCe94znUeJWETsin/f88I5iFN2fMETzEExg5Lp2u', 1);
insert into users (id, login, password, role_id) values (2, 'pthomke1', '$2a$04$1aq.bsgKX5OHyifedZ4zB.Vtfpde0NCXJhSee9MetSWoNY238rZAa', 2);
insert into users (id, login, password, role_id) values (3, 'ghayter2', '$2a$04$rJxMc7KFZ2Gpw2p3IagdfuHt0DAu0shIkczBVPTgxOMrUUL0yB6GO', 1);
insert into users (id, login, password, role_id) values (4, 'cdominichetti3', '$2a$04$0wwG5WvF3NTrW/9gzLHzMegcpF611N3DOTp10xu9ml0IHAimsHhBm', 1);
insert into users (id, login, password, role_id) values (5, 'cvatini4', '$2a$04$Pk7F8ojmw/U73KulRsOOkeJG3P/DD3Nia4nc2Akej3mRNiv3Rz.ES', 1);
insert into users (id, login, password, role_id) values (6, 'wbarmadier5', '$2a$04$KN7AjT2gDndsfiEOLoV7xewxiMbSYFjP1yT3RswK8IabDI1kLl7Ky', 2);
insert into users (id, login, password, role_id) values (7, 'pgarham6', '$2a$04$YizPmThbndNjxy.jgjYJKedvtYTlpRbVaOTwxLog9sGeTJws4o6Fi', 2);
insert into users (id, login, password, role_id) values (8, 'cshervil7', '$2a$04$TyS.bKHz9flwXo9WsAHIAeZk//MdROlsUW73WFR/su.2sagjSmuka', 2);
insert into users (id, login, password, role_id) values (9, 'rwestbury8', '$2a$04$ksC8XKLYDPgSroiXIb3Px.1aIy3D8K1CAgqNKj4tdY33mYjmjq9uq', 2);
insert into users (id, login, password, role_id) values (10, 'amustin9', '$2a$04$inwT2ciDNgTWbPOENz7Pz.dNZ/pUAi0UY2/F40YMQEeWcms.yeZR.', 1);

insert into recruiters (id, user_id) values (1, 1);
insert into recruiters (id, user_id) values (2, 3);
insert into recruiters (id, user_id) values (3, 4);
insert into recruiters (id, user_id) values (4, 5);
insert into recruiters (id, user_id) values (5, 10);

insert into seekers (id, user_id, email, phone, bio, firstname, lastname) values (1, 2, 'llittlefair0@xing.com', '598-716-6362', 'St. Petersburg State Marine Technical University', 'Merle', 'Lorenzo');
insert into seekers (id, user_id, email, phone, bio, firstname, lastname) values (2, 7, 'aslocum1@google.ca', '645-795-2357', 'European Open University', 'Waneta', 'Ashla');
insert into seekers (id, user_id, email, phone, bio, firstname, lastname) values (3, 8, 'screamer2@wix.com', '912-371-8964', 'University of Verona', 'Sula', 'Shea');
insert into seekers (id, user_id, email, phone, bio, firstname, lastname) values (4, 9, 'shumpatch3@house.gov', '127-248-4842', 'The Rockefeller University', 'Sophia', 'Sally');
insert into seekers (id, user_id, email, phone, bio, firstname, lastname) values (5, 6, 'gearly4@imgur.com', '653-333-3123', 'Ilsa Independent College', 'Lisbeth', 'Gilda');

insert into companies (id, name, description, recruiter_id) values (1, 'Yozio', 'Property-Casualty Insurers', 1);
insert into companies (id, name, description, recruiter_id) values (2, 'Kaymbo', 'Major Pharmaceuticals', 3);
insert into companies (id, name, description, recruiter_id) values (3, 'Lajo', 'Telecommunications Equipment', 10);

insert into offers (id, title, description, location, company_id) values (1, 'Clinical Specialist', 'Major Banks', 'Turośń Kościelna', 1);
insert into offers (id, title, description, location, company_id) values (2, 'Senior Editor', 'Computer Software: Prepackaged Software', 'Timpas', 1);
insert into offers (id, title, description, location, company_id) values (3, 'Mechanical Systems Engineer', 'n/a', 'Baltimore', 2);
insert into offers (id, title, description, location, company_id) values (4, 'Staff Scientist', 'Electric Utilities: Central', 'Hayama', 2);
insert into offers (id, title, description, location, company_id) values (5, 'Professor', 'EDP Services', 'Chonghe', 3);


insert into seeker_offer (offer_id, seeker_id) values (1, 2);
insert into seeker_offer (offer_id, seeker_id) values (2, 2);
insert into seeker_offer (offer_id, seeker_id) values (3, 4);
insert into seeker_offer (offer_id, seeker_id) values (4, 5);
insert into seeker_offer (offer_id, seeker_id) values (4, 2);
insert into seeker_offer (offer_id, seeker_id) values (4, 1);
insert into seeker_offer (offer_id, seeker_id) values (5, 5);

--- ==============

--- Samples requests

--- Get all seekers of an offer
SELECT so.offer_id, s.firstname, s.lastname FROM seeker_offer so
LEFT JOIN seekers s ON s.id = so.seeker_id
WHERE offer_id = 4;

--- Get all offers of a seeker
SELECT so.seeker_id, o.title, o.description FROM seeker_offer so
LEFT JOIN offers o ON o.id = so.offer_id
WHERE seeker_id = 5;