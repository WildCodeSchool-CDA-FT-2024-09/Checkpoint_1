SELECT * FROM Offre;

SELECT * FROM Offre WHERE ville = 'Paris';

SELECT Candidat.*
FROM Candidat
INNER JOIN Candidat_Offres ON Candidat.id = Candidat_Offres.candidats_id
WHERE Candidat_Offres.offres_id = 5;

SELECT Candidat.*
FROM Candidat
INNER JOIN Candidat_Offres ON Candidat.id = Candidat_Offres.candidats_id
INNER JOIN Offre ON Candidat_Offres.offres_id = Offre.id
WHERE Offre.entreprise_id = 2;