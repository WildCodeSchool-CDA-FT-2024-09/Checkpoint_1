--Liste de toutes les offres d'emploi
SELECT * FROM job;

--Liste des offre d'emploi de la ville de Chicago
SELECT * FROM job where location = 'Chicago';

--Les informations de tous candidats qui ont postulé à une offre précise
SELECT "ud"."firstname", "ud"."lastname", "ud"."phone", "ud"."email", "ud"."resume" FROM "job" 
INNER JOIN "job_application" as "jobapp"
ON "jobapp"."job_id"="job"."id"
INNER JOIN "user" ON "user"."id"="jobapp"."job_id"
INNER JOIN "user_details" as "ud"
ON "ud"."id"="user"."id"
WHERE "job"."id"=2;

--Les informations de tous les candidats qui ont postulé aux offres d'une entreprise
SELECT "ud"."firstname", "ud"."lastname", "ud"."phone", "ud"."email", "ud"."resume", "job"."title", "company"."name"
 FROM "company"
INNER JOIN "job" ON "job"."company_id"="company"."id"
INNER JOIN "job_application" as "jobapp"
ON "jobapp"."job_id"="job"."id"
INNER JOIN "user" ON "user"."id"="jobapp"."user_id"
INNER JOIN "user_details" as "ud"
ON "ud"."id"="user"."id"
WHERE "company"."id"=1;