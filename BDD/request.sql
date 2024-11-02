-- // requête de toutes les offres d'emploi

SELECT * FROM jobOffer;

-- // requête de toutes les offres d'emploi de la ville de Paris

SELECT * FROM jobOffer WHERE city = 'Paris';


-- // requête des informations de tous les candidats ayant postulé à une offre d'emploi précise

SELECT * FROM user
INNER JOIN application ON user.id = application.user_id
WHERE application.jobOffer_id = 5;

-- // requête des informations de tous les candidats ayant postulé aux offres d'emploi d'une entreprise précise

SELECT * FROM user
INNER JOIN application ON user.id = application.user_id
INNER JOIN jobOffer ON application.jobOffer_id = jobOffer.id
WHERE jobOffer.company_id = 1;
