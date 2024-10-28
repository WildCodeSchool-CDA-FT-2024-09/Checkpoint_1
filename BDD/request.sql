SELECT * FROM job_offer;

SELECT * FROM job_offer WHERE city='Paris';

SELECT c.* FROM job_offer
JOIN application AS a
ON a.job_id = job_offer.id
JOIN candidate AS c
ON c.id = a.candidate_id
WHERE job_offer.id = 1;

SELECT c.* FROM job_offer
JOIN application AS a
ON a.job_id = job_offer.id
JOIN candidate AS c
ON c.id = a.candidate_id
WHERE job_offer.company_id = 2;
