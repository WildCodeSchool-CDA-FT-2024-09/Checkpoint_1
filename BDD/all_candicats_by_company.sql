SELECT candidat.*
FROM candidat
JOIN candidature ON candidat.id = candidature.candidat_id
JOIN job_offer ON candidature.job_offer_id = job_offer.id
WHERE job_offer.company_id = 1;
