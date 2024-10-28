DROP TABLE IF EXISTS Candidature;
DROP TABLE IF EXISTS Candidat;
DROP TABLE IF EXISTS Offre;
DROP TABLE IF EXISTS Entreprise;
DROP TABLE IF EXISTS Recruteur;

CREATE TABLE Recruteur (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login TEXT NOT NULL UNIQUE,
    mot_de_passe TEXT NOT NULL
);

CREATE TABLE Entreprise (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT(150) NOT NULL,
    description TEXT,
    id_recruteur INTEGER,
    FOREIGN KEY (id_recruteur) REFERENCES Recruteur(id)
);

CREATE TABLE Offre (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titre_du_poste TEXT(100) NOT NULL,
    descriptif_du_poste TEXT,
    ville_du_poste TEXT(50) NOT NULL,
    id_entreprise INTEGER,
    FOREIGN KEY (id_entreprise) REFERENCES Entreprise(id)
);

CREATE TABLE Candidat (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login TEXT(50) NOT NULL UNIQUE,
    mot_de_passe TEXT(100) NOT NULL,
    nom TEXT(100) NOT NULL,
    prenom TEXT(100) NOT NULL,
    email TEXT(150) NOT NULL,
    numero_tel TEXT(15),
    presentation TEXT
);

CREATE TABLE Candidature (
    id_candidat INTEGER,
    id_offre INTEGER,
    PRIMARY KEY (id_candidat, id_offre),
    FOREIGN KEY (id_candidat) REFERENCES Candidat(id),
    FOREIGN KEY (id_offre) REFERENCES Offre(id)
);

INSERT INTO Recruteur (login, mot_de_passe) VALUES
('aniave1', 'pO2%5PORSHH7'),
('jbrimham2', 'aK2`D0jDOZ'),
('bfarlham3', 'lD7@lzPmx'),
('cpeirson4', 'rZ1=9iv\RlwcFO'),
('tjewis5', 'zY8_SklTD'),
('dklimentyonok8', 'pS1>IayXPzsL?L8'),
('ebalaizot9', 'xQ7>g!c!');

INSERT INTO Entreprise (nom, description, id_recruteur) VALUES
('Oba', 'Total web-enabled synergy', 1),
('Rhybox', 'Extended 3rd generation conglomeration', 2),
('Realpoint', 'Fully-configurable incremental protocol', 3),
('Fivespan', 'Triple-buffered mobile archive', 4),
('Voomm', 'Cloned client-server array', 5),
('Flashpoint', 'Compatible uniform definition', 6),
('Divape', 'Ameliorated stable methodology', 7),
('Browsebug', 'Monitored client-driven artificial intelligence', 8),
('Mymm', 'Enhanced bottom-line hub', 9),
('Jetpulse', 'Up-sized radical concept', 10);

INSERT INTO Offre (titre_du_poste, descriptif_du_poste, ville_du_poste, id_entreprise) VALUES
('Recruiter', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'Haczów', 1),
('Analog Circuit Design manager', 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Las Terrenas', 2),
('Accountant II', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Araras', 3),
('Teacher', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'Langenburg', 4),
('Environmental Tech', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'Bakuriani', 5),
('VP Sales', 'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Dahe', 6),
('Health Coach II', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Fort Wayne', 7),
('Technical Writer', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Helsingborg', 8),
('Environmental Specialist', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Sekampung', 9),
('Administrative Officer', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Mandiana', 10);


INSERT INTO Candidat (login, mot_de_passe, nom, prenom, email, numero_tel, presentation) VALUES
('adebiaggi0', 'eD9*W3B!dC/Y.15%', 'De Biaggi', 'Adore', 'adebiaggi0@amazon.co.jp', '276-136-3256', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.'),
('jgary1', 'jO6&37k''%I', 'Gary', 'Jorge', 'jgary1@scribd.com', '141-125-7710', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.'),
('bdadamo2', 'mY4>mvhLQtMB', 'D''Adamo', 'Bald', 'bdadamo2@shutterfly.com', '413-681-2564', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.'),
('ksugden3', 'tZ8(lJt/''CNh', 'Sugden', 'Kenn', 'ksugden3@github.io', '290-690-3345', 'Etiam justo. Etiam pretium iaculis justo.'),
('kdowe4', 'qB5=mP{l2e2/@', 'Dowe', 'Kristan', 'kdowe4@ezinearticles.com', '759-367-2699', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.'),
('aauchterlonie5', 'gT7)3Zt`#$/', 'Auchterlonie', 'Armando', 'aauchterlonie5@dropbox.com', '349-245-7749', 'Etiam faucibus cursus urna. Ut tellus.'),
('phirschmann6', 'zP5!?*h|Nt', 'Hirschmann', 'Peyton', 'phirschmann6@hubpages.com', '194-719-4073', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),
('trawlings7', 'wN2,z!now/5?6', 'Rawlings', 'Teena', 'trawlings7@cloudflare.com', '918-938-7455', 'Aliquam quis turpis eget elit sodales scelerisque.'),
('tgoosey8', 'bE0{9H*''_(|M', 'Goosey', 'Tomas', 'tgoosey8@wikispaces.com', '662-851-1728', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
('cfarley9', 'mT0/_Tkrxe*%G', 'Farley', 'Coletta', 'cfarley9@cafepress.com', '533-336-5031', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.');


INSERT INTO Candidature (id_candidat, id_offre) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);



