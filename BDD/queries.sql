--- Toutes les offres d'emploi
SELECT * FROM offers;

--- Toutes les offres d'emploi d'une ville (Hayama)
SELECT * FROM offers WHERE location = 'Hayama';

--- Les informations de tous candidats qui ont postulé à une offre précise
SELECT so.offer_id, CONCAT(s.firstname, ' ', s.lastname) AS Seeker, s.email AS "Seeker email", s.phone AS "Seeker phone", s.bio AS "Seeker bio" FROM seeker_offer so
LEFT JOIN seekers s ON s.id = so.seeker_id
WHERE so.offer_id = 4;

--- ou plus complet avec les infos de l'offre
SELECT so.offer_id AS "Offer ID", o.title AS Offer, CONCAT(s.firstname, ' ', s.lastname) AS Seeker, s.email AS "Seeker email", s.phone AS "Seeker phone", s.bio  AS "Seeker bio" FROM seeker_offer so
LEFT JOIN seekers s ON s.id = so.seeker_id
LEFT JOIN offers o ON o.id = so.offer_id
WHERE so.offer_id = 4;

--- Les informations de tous les candidats qui ont postulé aux offres d'une entreprise
SELECT c.id AS "Company ID", c.name AS "Company", o.title AS 'Offer', CONCAT(s.firstname, ' ', s.lastname) AS Seeker, s.email AS "Seeker email", s.phone AS "Seeker phone", s.bio AS "Seeker bio" FROM seeker_offer so
LEFT JOIN offers o ON o.id = so.offer_id
LEFT JOIN companies c ON c.id = o.company_id
LEFT JOIN seekers s ON s.id = so.seeker_id
WHERE c.id = 1;