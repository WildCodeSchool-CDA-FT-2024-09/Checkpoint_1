SELECT c.username, c.first_name, c.last_name, c.phone_number, c.bio 
FROM candidate c
JOIN application a ON c.user_id = a.candidate_id
JOIN job_offer j ON a.job_offer_id = j.id
WHERE j.company_id = 1