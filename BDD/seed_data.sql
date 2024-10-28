
INSERT INTO `recruteur` (`login`, `mot_de_passe`) VALUES
('recruteur1', 'password123'),
('recruteur2', 'securepass456');


INSERT INTO `entreprises` (`nom`, `recruteur_id`, `description`) VALUES
('TechCorp', 1, 'Une entreprise innovante spécialisée dans les solutions technologiques.'),
('HealthPlus', 2, 'Entreprise de services de santé et bien-être.');


INSERT INTO `offres` (`titre_post`, `descriptif_poste`, `ville_poste`, `entreprise_id`) VALUES
('Développeur Web', 'Responsable du développement de sites web dynamiques.', 'Paris', 1),
('Chef de Projet', 'Gérer les projets de développement de solutions IT.', 'Lyon', 1),
('Analyste Financier', 'Analyse des données financières et des rapports.', 'Marseille', 2);


INSERT INTO `candidats` (`login`, `mot_de_passe`, `nom`, `prenom`, `email`, `numero_telephone`, `teste_presentation`) VALUES
('candidate1', 'mypassword1', 'Dupont', 'Marie', 'marie.dupont@example.com', '0123456789', 'Je suis passionnée par le développement web et l\'analyse de données.'),
('candidate2', 'mypassword2', 'Martin', 'Lucas', 'lucas.martin@example.com', '0987654321', 'J\'ai une expérience solide dans la gestion de projets techniques.'),
('candidate3', 'mypassword3', 'Bernard', 'Sophie', 'sophie.bernard@example.com', '0654321987', 'Spécialisée en finance et analyse de données.');


INSERT INTO `candidatures` (`candidat_id`, `offre_id`) VALUES
(1, 1), 
(2, 2), 
(3, 3); 