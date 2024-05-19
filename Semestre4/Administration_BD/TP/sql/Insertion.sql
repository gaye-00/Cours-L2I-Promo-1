
Delete From Enseignant;
Insert into Enseignant(Nom, Prenom, Sexe, Grade, Specialite)
values('Gueye', 'Amadou', 'Masculin', 'Maitre de conferences', 'Lettres Modernes');


INSERT INTO Departement(Nom, UFR, Adresse, Anneeouverture) VALUES
('Mathematiques', 'UFR ST', 'Diabir Rue 00', 2007),
('Lettres modernes', 'UFR LASHU', 'Elevage Rue 10', 2008),
('Droit des affaires', 'UFR SES', 'Diabir Rue 01', 2008),
('Physique', 'UFR ST', 'Diabir Rue 03', 2008),
('Histoire', 'UFR LASHU', 'Elevage Rue 11', 2020);

INSERT INTO Enseignant(Nom, Prenom, Sexe, Grade, Specialite) VALUES
('GUEYE', 'Amadou', 'Masculin', 'Maitre de conferences', 'Lettres modernes'),
('NDIAYE','Aissatou', 'Feminin', 'Professeur', 'Mathematiques'),
('DIEDHIOU', 'Cheikh', 'Masculin', 'Assistant', 'Informatique'),
('GOMIS', 'Jean Paul', 'Masculin', 'Assistant', 'Mathematiques'),
('FALL', 'Fatoumata', 'Feminin', 'Assistant', 'Mathematiques'),
('NDIAYE', 'Cheikh', 'Masculin', 'Assistant', 'Physique'),
('SECK', 'Diariatou', 'Feminin', 'Maitre-Assistant', 'Geographie'),
('GUEYE', 'Jean Paul', 'Masculin', 'Professeur', 'Mathematiques'),
('GOMIS', 'Moustapha', 'Masculin', 'Maitre-Assistant', 'Informatique');

ALTER TABLE Matiere CHANGE Credit Credit SMALLINT CHECK(Credit > 0);
mysql> SHOW CREATE TABLE Matiere;
mysql> ALTER TABLE Matiere drop constraint Matiere_chk_1;
mysql> ALTER TABLE Matiere drop constraint Matiere_chk_3;
mysql> ALTER TABLE Matiere drop constraint Matiere_chk_4;
mysql> ALTER TABLE Matiere ADD constraint Matiere_chk_1  CHECK ((`Credit` in (2,3,4,5, 6)));

INSERT INTO Matiere(Nom, credit, Coefficient, Categorie) VALUES
('Système d’exploitation', 6, 2, 'Fondamentale'),
('Algorithme et programmation', 4, 3, 'Fondamentale'),
('Anglais', 3, 1, 'Transversale'),
('Probabilité', 3, 1, 'Transversale'),
('Développement web', 5, 2, 'Fondamentale');

INSERT INTO Charger(Enseignant, Matiere, Type) VALUES
('2 002 N', 'Probabilité', 'CM'),
('2 005 F', 'Probabilité', 'TD'),
('2 002 N', 'Probabilité', 'TP'),
('1 009 G', 'Algorithme et programmation', 'CM'),
('1 009 G', 'Algorithme et programmation', 'TD'),
('1 009 G', 'Algorithme et programmation', 'TP');

INSERT INTO Matiere(Nom, credit, Coefficient, Categorie) VALUES
('Techniques de communication', 4, 1, 'Transversale');

INSERT INTO Charger(Enseignant, Matiere, Type) VALUES
('1 001 G', 'Techniques de communication', 'CM');

ALTER TABLE Charger CHANGE Type Type varchar(10) CHECK(Type in('TD', 'TP', 'CM'));

INSERT INTO Enseignant(Nom, Prenom, Sexe, Grade, Specialite) VALUES
('DIATTA', 'Astou', 'Feminin', 'Maitre de conferences', 'Lettres modernes');

-- ...
UPDATE Departement SET Adresse="Diabir" WHERE Nom="Informatique";

-- mysql> DELETE FROM Enseignant WHERE Nom = 'DIATTA' AND 'Astou';
-- ERROR 1292 (22007): Truncated incorrect DOUBLE value: 'Astou'

-- mysql> DELETE FROM Enseignant WHERE Matricule = '2 010 D';
-- ERROR 1451 (23000): Cannot delete or update a parent row:
-- a foreign key constraint fails (`Scolarite`.`Service`, CONSTRAINT `FK_Servire_Enseignant`
-- FOREIGN KEY (`Enseignant`) REFERENCES `Enseignant` (`Matricule`))