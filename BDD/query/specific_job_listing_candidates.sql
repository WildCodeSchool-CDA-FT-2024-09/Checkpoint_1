-- - Les informations de tous candidats qui ont postulé à une offre précise
select
  c.name as "Company",
  j.title as "Job Title",
  j.location as "Job Location",
  c.last_name as "Applicant Last Name",
  c.first_name as "Applicant First Name",
  c.email as "Applicant Email",
  c.phone_number as "Applicant Email",
  c.personal_statement as "Applicant Personal Statement",
  a.created_at as "Application Submitted At"
from
  applications a
  left join candidate c on c.id_user = a.id_candidate
  left join job_listing j on a.id_job_listing = j.id
  left join company c on j.id_company = c.id
where
  id_job_listing = 11;