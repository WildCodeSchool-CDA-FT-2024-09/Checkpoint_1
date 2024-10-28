--toutes les offres d'emploi
SELECT * FROM Offre;

-- toutes les offres d'emploi de la ville de Paris
SELECT * FROM Offre WHERE ville = 'Paris';

--les informations de tous les candidats qui ont postulé a l'offre avec l'id 5 (Responsable Projets)
SELECT Candidat.*
FROM Candidat
INNER JOIN Candidat_Offres ON Candidat.id = Candidat_Offres.candidats_id
WHERE Candidat_Offres.offres_id = 5;

-- les informations de tous les candidats qui ont postulé au offres de l'entreprise a l'id 2 ( GreenEnergy )
SELECT Candidat.*
FROM Candidat
INNER JOIN Candidat_Offres ON Candidat.id = Candidat_Offres.candidats_id
INNER JOIN Offre ON Candidat_Offres.offres_id = Offre.id
WHERE Offre.entreprise_id = 2;