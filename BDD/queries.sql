-- Toutes les offres d'emploi
select * from job
-- Toutes les offres d'emploi d'une ville (Paris)
select *
from job
where
    location = 'Oklahoma City'
    -- Les informations de tous candidats qui ont postulé à une offre précise

select user_details.firstname, user_details.lastname, user_details.resume, user_details.phone, user_details.email
from
    job_application
    join user on job_application.user_id = user.id
    join user_details on user_details.user_id = user.id
where
    job_id = 75;

-- Les informations de tous les candidats qui ont postulé aux offres d'une entreprise
select job.title, user_details.firstname, user_details.lastname, user_details.resume, user_details.phone, user_details.email
from
    job_application
    join job on job_application.job_id = job.id
    join company on job.company_id = company.id
    join user on job_application.user_id = user.id
    join user_details on user_details.user_id = user.id
where
    company.name = 'Twimm';