INSERT INTO Immeuble(Adresse, Nb_niveau, Annee) VALUES
('250 Tilene', 4, 2022),
('10 Castor', 5, 2018),
('138 Tilene', 2, 2007),
('22 Boucotte', 4, 2018),
('25 Lindiane', 2, 2000);

INSERT INTO Locataire(Numero, Nom, Prenom, Age, Sexe, Profession) VALUES
(1, 'DIOP', 'Cheikh', 34, 'M', 'Enseignant'),
(2, 'DIATTA', 'Fatou', 42, 'F', 'Commercante'),
(3, 'NDIAYE', 'Abdou', 22, 'M', 'Menuisier'),
(4, 'NDIAYE', 'Aissatou', 35, 'F', 'Avocate'),
(5, 'GOMIS', 'Jean', 30, 'M', 'Enseignant');

INSERT INTO Appartement(Numero, Immeuble, Nb_piece, Prix, Niveau) VALUES
(1, '10 Castor', 3, 75000, 3),
(2, '10 Castor', 4, 120000, 2),
(3, '10 Castor', 3, 10000, 1),
(1, '250 Tilene', 4, 100000, 1),
(2, '250 Tilene', 4, 100000, 2),
(1, '22 Boucotte', 3, 85000, 1),
(2, '22 Boucotte', 4, 135000, 2),
(3, '22 Boucotte', 4, 120000, 3),
(4, '22 Boucotte', 3, 100000, 4),
(5, '22 Boucotte', 4, 115000, 5),
(3, '25 Lindiane', 3, 80000, 2),
(4, '25 Lindiane', 2, 50000, 2);

INSERT INTO Louer(Appartement, Immeuble, Locataire, Date, Duree) VALUES
(3, '25 Lindiane', 1, '2020-01-02', 12);
(3, '25 Lindiane', 3, '2003-03-05', 48),
(1, '22 Boucotte', 4, '2018-06-06', 12),
(5, '22 Boucotte', 1, '2019-07-05', 24),
(5, '22 Boucotte', 4, '2022-01-01', 60),
(4, '25 Lindiane', 3, '2020-03-02', 36),
(2, '10 Castor', 2, '2019-01-02', 96),
(2, '250 Tilene', 2, '2022-05-15', 48);