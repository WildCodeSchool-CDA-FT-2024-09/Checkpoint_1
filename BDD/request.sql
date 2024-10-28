SELECT * FROM job_offer;

SELECT * FROM job_offer WHERE city='Paris';

SELECT c.* FROM job_offer
JOIN application AS a
ON a.job_id = job_offer.id
JOIN candidate AS c
ON c.id = a.candidate_id
WHERE job_offer.id = 1;

SELECT c.*, j.job_title, comp.name FROM job_offer AS j
JOIN application AS a
ON a.job_id = j.id
JOIN company AS comp
ON comp.id = j.company_id
JOIN candidate AS c
ON c.id = a.candidate_id
WHERE j.company_id = 6;
