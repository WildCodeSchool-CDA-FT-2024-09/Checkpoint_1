-- - Toutes les offres d 'emploi d' une ville (Paris)
select
  jl.title as "Job Title",
  jl.description as "Job Description",
  jl.location as "Job Location",
  c.name as "Company Name",
  u.username as "Recruiter Username"
from
  job_listing jl
  left join company c on c.id = jl.id_company
  left join recruiter r on r.id_company = c.id
  left join user u on r.id_user = u.id
where
  jl.location LIKE '%Paris%';