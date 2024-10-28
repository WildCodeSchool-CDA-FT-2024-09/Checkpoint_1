SELECT c.*
FROM candidats c
JOIN candidatures ca ON c.id = ca.candidat_id
JOIN offres ON candidatures.offre_id = offres.id
WHERE ca.entreprise_id = [ID_ENTREPRISE];