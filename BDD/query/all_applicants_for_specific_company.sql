-- - Les informations de tous les candidats qui ont postulé aux offres d 'une entreprise
-- NB: currently business spec does not explicitly exclude a candidate applying multiple times to the same job listing
select
  c.name,
  j.title,
  j.location,
  c.last_name as "applicant_last_name",
  c.first_name as "applicant_first_name",
  a.created_at as "application date"
from
  company c
  left join job_listing j on j.id_company = c.id
  left join applications a on a.id_job_listing = j.id
  left join candidate c on c.id_user = a.id_candidate
where
  c.id = 3
  and a.id_job_listing is not null;