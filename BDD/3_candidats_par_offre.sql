SELECT Candidat.*
FROM Candidat
JOIN Candidature ON Candidature.id_candidat = Candidat.id
JOIN Offre ON Candidature.id_offre = Offre.id
WHERE Offre.id = 1;
