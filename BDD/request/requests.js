//  * Toutes les offres d'emploi 

SELECT * FROM job;

// TODO : Réponse attendue : 
// ? 70 éléments.

//  * Toutes les offres d'emploi d'une ville (Paris)

SELECT * FROM job WHERE city = 'Granada'; // Je n'avais pas de Paris dans mon jeu de donnée :)

// TODO : Réponse attendue : 
// ? id	 | title              |	description                                                                                                       | city    |	buisness_id
// ? 15	 | Environmental Tech |	Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. |	Granada |	3

//  * Les informations de tous candidats qui ont postulé à une offre précise

SELECT candidate.* FROM candidate
JOIN job_candidate ON candidate.id = job_candidate.candidate_id
JOIN job ON job.id = job_candidate.job_id
WHERE job.id = 42;

// TODO : Réponse attendue : 
// ? id	 | login      |	password    | firstname |	lastname | email                       | phone      | presentation_text
// ? 36	 | epatemorez |	pA7&mxx~L$6 |	Ellwood   |	Patemore | epatemorez@reverbnation.com | 7532660435 | Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

//  * Les informations de tous les candidats qui ont postulé aux offres d'une entreprise

SELECT candidate.* FROM candidate
JOIN job_candidate ON candidate.id = job_candidate.candidate_id
JOIN job ON job.id = job_candidate.job_id
WHERE buisness_id = 19;

// TODO : Réponse attendue : 
// ? id	 | login      |	password         | firstname |	lastname | email                  | phone      | presentation_text
// ? 5	 | gbaldrick4 |	nU9!D+_V#z$nje_b | Garnet    |	Baldrick | gbaldrick4@foxnews.com | 6543848730 | Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
