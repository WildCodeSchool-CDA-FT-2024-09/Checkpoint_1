INSERT INTO Entreprise (nom, description) VALUES 
('TechCorp', 'Entreprise spécialisée dans les solutions IA.'),
('GreenEnergy', 'Entreprise dans le domaine des énergies renouvelables.'),
('EducaPlus', 'Centre de formation pour les professionnels.'),
('MediCare', 'Société de services de santé numérique.'),
('AutoLogistics', 'Entreprise de logistique automobile.');


INSERT INTO Recruteur (entreprise_id, login, mdp) VALUES 
(1, 'recruteur1', 'mdp1'),
(2, 'recruteur2', 'mdp2'),
(3, 'recruteur3', 'mdp3'),
(4, 'recruteur4', 'mdp4'),
(5, 'recruteur5', 'mdp5');


INSERT INTO Candidat (login, mdp, nom, prénom, email, téléphone, texte) VALUES 
('candidat1', 'pass123', 'Dupont', 'Marie', 'marie.dupont@example.com', 1234567890, 'Développeuse expérimentée.'),
('candidat2', 'pass456', 'Martin', 'Paul', 'paul.martin@example.com', 2345678901, 'Chef de projet avec 5 ans d’expérience.'),
('candidat3', 'pass789', 'Durand', 'Sophie', 'sophie.durand@example.com', 3456789012, 'Spécialiste en IA.'),
('candidat4', 'pass012', 'Leroy', 'Jean', 'jean.leroy@example.com', 4567890123, 'Technicien en énergie renouvelable.'),
('candidat5', 'pass345', 'Moreau', 'Lucie', 'lucie.moreau@example.com', 5678901234, 'Designer UX/UI.'),
('candidat6', 'pass678', 'Garcia', 'Pierre', 'pierre.garcia@example.com', 6789012345, 'Analyste en logistique.'),
('candidat7', 'pass901', 'Bernard', 'Julien', 'julien.bernard@example.com', 7890123456, 'Développeur back-end.'),
('candidat8', 'pass234', 'Petit', 'Camille', 'camille.petit@example.com', 8901234567, 'Ingénieur en IA.'),
('candidat9', 'pass567', 'Roux', 'Alice', 'alice.roux@example.com', 9012345678, 'Data Scientist.'),
('candidat10', 'pass890', 'Fontaine', 'Hugo', 'hugo.fontaine@example.com', 1230987654, 'Consultant en stratégie.'),
('candidat11', 'pass321', 'Blanc', 'Emma', 'emma.blanc@example.com', 4567098765, 'Assistante RH.'),
('candidat12', 'pass654', 'Garnier', 'Lucas', 'lucas.garnier@example.com', 7890012345, 'Chef de produit.');


INSERT INTO Offre (entreprise_id, post, ville, description) VALUES 
(1, 'Ingénieur Logiciel', 'Paris', 'Développement de solutions IA.'),
(1, 'Chef de Projet', 'Paris', 'Gestion de projets IA.'),
(1, 'Data Scientist', 'Paris', 'Analyse de données pour IA.'),
(2, 'Technicien Énergie', 'Lyon', 'Maintenance d’équipements solaires.'),
(2, 'Responsable Projets', 'Lyon', 'Coordination des projets d’énergie verte.'),
(2, 'Analyste Environnement', 'Lyon', 'Études d’impact environnemental.'),
(3, 'Formateur Développement', 'Marseille', 'Cours de développement web.'),
(3, 'Conseiller Formation', 'Marseille', 'Accompagnement des apprenants.'),
(3, 'Coordinateur Pédagogique', 'Marseille', 'Coordination des programmes de formation.'),
(4, 'Infirmier Digital', 'Nice', 'Support pour les solutions de santé numérique.'),
(4, 'Chef de Produit Santé', 'Nice', 'Développement de produits santé.'),
(4, 'Responsable Service Clients', 'Nice', 'Assistance pour les patients.'),
(5, 'Logisticien', 'Toulouse', 'Gestion des stocks et logistique.'),
(5, 'Analyste Logistique', 'Toulouse', 'Optimisation des chaînes logistiques.'),
(5, 'Chargé de Transport', 'Toulouse', 'Coordination des opérations de transport.'),
(1, 'Développeur Front-End', 'Paris', 'Développement d’interfaces utilisateurs.'),
(2, 'Spécialiste Énergie Solaire', 'Lyon', 'Développement de projets solaires.'),
(3, 'Formateur IA', 'Marseille', 'Cours de formation en IA.'),
(4, 'Analyste de Données Santé', 'Nice', 'Analyse des données des patients.'),
(5, 'Chef de Projet Logistique', 'Toulouse', 'Gestion des projets de logistique.');


INSERT INTO Candidat_Offres (candidats_id, offres_id, a_candidate) VALUES 
(1, 1, TRUE),
(2, 2, TRUE),
(3, 3, TRUE),
(4, 4, TRUE),
(5, 5, TRUE),
(6, 6, TRUE),
(7, 7, TRUE),
(8, 8, TRUE),
(9, 9, TRUE),
(10, 10, TRUE),
(11, 11, TRUE),
(12, 12, TRUE),
(1, 13, TRUE),
(2, 14, TRUE),
(3, 15, TRUE),
(4, 16, TRUE),
(5, 17, TRUE),
(6, 18, TRUE),
(7, 19, TRUE),
(8, 20, TRUE);