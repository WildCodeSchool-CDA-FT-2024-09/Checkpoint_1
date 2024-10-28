SELECT Candidat.*
FROM Candidat
JOIN Candidature ON Candidature.id_candidat = Candidat.id
JOIN Offre ON Candidature.id_offre = Offre.id
JOIN Entreprise ON Offre.id_entreprise = Entreprise.id
WHERE Entreprise.id = 1;
