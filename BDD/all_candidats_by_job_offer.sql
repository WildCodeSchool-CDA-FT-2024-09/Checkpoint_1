SELECT candidat.*
FROM candidat
JOIN candidature ON candidat.id = candidature.candidat_id
WHERE candidature.job_offer_id = 3;
