SELECT * FROM offer;
SELECT * FROM offer WHERE city = 'Paris';
SELECT c.id AS candidateID, c.email, c.lastname, c.firstname, c.contact_email AS contactEmail, c.phone_number AS phoneNumber, c.bio, o.id AS offerID, o.title FROM candidate AS c JOIN candidate_offer AS co ON c.id = co.candidate_id JOIN offer AS o ON o.id = co.offer_id WHERE o.id = 1;

SELECT c.id AS candidateID, c.email, c.lastname, c.firstname, c.contact_email AS contactEmail, c.phone_number AS phoneNumber, c.bio, o.id AS offerId, o.title AS offerTitle, o.description, o.city, cy.name AS companyName, o.company_id AS companyID FROM candidate AS c JOIN candidate_offer AS co ON co.candidate_id = c.id JOIN offer AS o ON o.id = co.offer_id JOIN company AS cy ON cy.id = o.company_id WHERE cy.id = 1;