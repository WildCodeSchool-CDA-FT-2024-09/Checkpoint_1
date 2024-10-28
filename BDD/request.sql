-- Toutes les offres d'emploi -- 

SELECT * FROM offer ; 

-- Toutes les offres d'emploi d'une ville (Savannah) -- 

SELECT * FROM offer WHERE city ='Savannah';

-- Les informations de tous candidats qui ont postulé à une offre précise -- 

SELECT c.candidate_id, c.firstname, c.lastname, c.phone, c.email, c.description FROM candidate_offer AS c INNER JOIN candidate AS c ON c.id = c.candidate_id  WHERE offer_id ='1' ;

-- Les informations de tous les candidats qui ont postulé aux offres d'une entreprise -- 

