SELECT c.*
FROM candidats c
JOIN candidatures ca ON c.id = ca.candidat_id
WHERE ca.offre_id = [ID_OFFRE];