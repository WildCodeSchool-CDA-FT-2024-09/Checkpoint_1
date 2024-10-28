SELECT c.username, c.first_name, c.last_name, c.phone_number, c.bio 
FROM candidate c
JOIN application a ON c.user_id = a.candidate_id
WHERE a.job_offer_id = 1