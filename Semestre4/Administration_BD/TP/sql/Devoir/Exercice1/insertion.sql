INSERT INTO Classe (Filiere, Niveau, Effectif) VALUES
('Informatique', 'Licence1', 50),
('Informatique', 'Licence2', 45),
('Informatique', 'Licence3', 40),
('Mathématiques', 'Licence1', 55),
('Mathématiques', 'Licence2', 50),
('Mathématiques', 'Licence3', 45),
('Physique', 'Licence1', 40),
('Physique', 'Licence2', 35),
('Physique', 'Licence3', 30),
('Chimie', 'Licence1', 45),
('Chimie', 'Licence2', 40),
('Chimie', 'Licence3', 35),
('Biologie', 'Licence1', 35),
('Biologie', 'Licence2', 30),
('Biologie', 'Licence3', 25),
('Sciences économiques', 'Licence1', 40),
('Sciences économiques', 'Licence2', 35),
('Sciences économiques', 'Licence3', 30),
('Sciences sociales', 'Licence1', 35),
('Sciences sociales', 'Licence2', 30),
('Sciences sociales', 'Licence3', 25),
('Lettres', 'Licence1', 30),
('Lettres', 'Licence2', 25);

INSERT INTO FaireCours VALUES
('Informatique', 'Licence1', ),
('Informatique', 'Licence2', ),
('Informatique', 'Licence3', ),
('Mathématiques', 'Licence1', ),
('Mathématiques', 'Licence2', ),
('Mathématiques', 'Licence3', ),
('Physique', 'Licence1', ),
('Physique', 'Licence2', ),
('Physique', 'Licence3', ),
('Chimie', 'Licence1', ),
('Chimie', 'Licence2', ),
('Chimie', 'Licence3', ),
('Biologie', 'Licence1', ),
('Biologie', 'Licence2', ),
('Biologie', 'Licence3', ),
('Sciences économiques', 'Licence1', ),
('Sciences économiques', 'Licence2', ),
('Sciences économiques', 'Licence3', ),
('Sciences sociales', 'Licence1', ),
('Sciences sociales', 'Licence2', ),
('Sciences sociales', 'Licence3', ),
('Lettres', 'Licence1', ),
('Lettres', 'Licence2', );

INSERT INTO Etat VALUES



INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Mathématiques', 'Licence 1', 4, 50, 3, 'Science');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Informatique', 'Licence 1', 5, 60, 3, 'Science');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Physique', 'Licence 1', 6, 70, 3, 'Science');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Chimie', 'Licence 1', 4, 60, 3, 'Science');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Biologie', 'Licence 1', 5, 50, 3, 'Science');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Anglais', 'Licence 1', 2, 40, 2, 'Langue');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Français', 'Licence 1', 2, 40, 1, 'Langue');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Histoire', 'Licence 1', 3, 50, 2, 'Arts');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Géographie', 'Licence 1', 3, 40, 2, 'Arts');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Philosophie', 'Licence 1', 2, 30, 1, 'Arts');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Economie', 'Licence 1', 3, 40, 2, 'Gestion');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Droit', 'Licence 1', 4, 60, 2, 'Gestion');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Comptabilité', 'Licence 1', 5, 70, 3, 'Gestion');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Marketing', 'Licence 1', 4, 50, 2, 'Gestion');




INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Mathématiques', 'A1', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Informatique', 'A2', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Physique', 'A3', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Chimie', 'A4', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Biologie', 'A5', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Anglais', 'A6', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Français', 'A7', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Histoire', 'A8', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Géographie', 'A9', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Philosophie', 'A10', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Economie', 'A11', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Droit', 'A12', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Comptabilité', 'A13', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Marketing', 'A14', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)



INSERT INTO Etat (Filiere, Niveau, Matiere, HeureEffec, HeureRest, Etat) VALUES
("Informatique", "Licence 1", "Algorithmique", "09:00:00", "01:00:00", "EN_COURS"),
("Informatique", "Licence 2", "Bases de donnees", "10:00:00", "02:00:00", "TERMINER"),
("Informatique", "Licence 3", "Programmation web", "11:00:00", "03:00:00", "EN_ATTENTE"),
("Mathematiques", "Licence 1", "Algebre lineaire", "12:00:00", "04:00:00", "EN_COURS"),
("Mathematiques", "Licence 2", "Geometrie", "13:00:00", "05:00:00", "TERMINER"),
("Mathematiques", "Licence 3", "Analyse", "14:00:00", "06:00:00", "EN_ATTENTE"),
("Physique", "Licence 1", "Mechanique", "15:00:00", "07:00:00", "EN_COURS"),
("Physique", "Licence 2", "Electromagnetisme", "16:00:00", "08:00:00", "TERMINER"),
("Physique", "Licence 3", "Quantique", "17:00:00", "09:00:00", "EN_ATTENTE"),
("Biologie", "Licence 1", "Biologie cellulaire", "18:00:00", "10:00:00", "EN_COURS"),
("Biologie", "Licence 2", "Ecologie", "19:00:00", "11:00:00", "TERMINER"),
("Biologie", "Licence 3", "Biotechnologie", "20:00:00", "12:00:00", "EN_ATTENTE"),
("Histoire", "Licence 1", "Antiquite", "21:00:00", "13:00:00", "EN_COURS"),
("Histoire", "Licence 2", "Moyen Age", "22:00:00", "14:00:00", "TERMINER"),
("Histoire", "Licence 3", "Contemporaine", "23:00:00", "15:00:00", "EN_ATTENTE"),
("Litterature", "Licence 1", "Renaissance", "00:00:00", "16:00:00", "EN_COURS"),
("Litterature", "Licence 2", "Romantisme", "01:00:00", "17:00:00", "TERMINER"),
("Litterature", "Licence 3", "Contemporaine", "02:00:00", "18:00:00", "EN_ATTENTE"),
("Philosophie", "Licence 1", "Antiquite", "03:00:00", "19:00:00", "EN_COURS");


INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Mathématiques', 'Licence 1', 4, 50, 3, 'Science');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Informatique', 'Licence 1', 5, 60, 3, 'Science');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Physique', 'Licence 1', 6, 70, 3, 'Science');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Chimie', 'Licence 1', 4, 60, 3, 'Science');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Biologie', 'Licence 1', 5, 50, 3, 'Science');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Anglais', 'Licence 1', 2, 40, 2, 'Langue');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Français', 'Licence 1', 2, 40, 1, 'Langue');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Histoire', 'Licence 1', 3, 50, 2, 'Arts');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Géographie', 'Licence 1', 3, 40, 2, 'Arts');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Philosophie', 'Licence 1', 2, 30, 1, 'Arts');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Economie', 'Licence 1', 3, 40, 2, 'Gestion');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Droit', 'Licence 1', 4, 60, 2, 'Gestion');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Comptabilité', 'Licence 1', 5, 70, 3, 'Gestion');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Domaine)
VALUES ('Marketing', 'Licence 1', 4, 50, 2, 'Gestion');

INSERT INTO Matiere (Nom, Niveau, Credit, Vol_Horaire, Coefficient, Dom

gayeabdoulaye163@gmail.com
Donne moi 25 insertion de cette table aussi. CREATE TABLE IF NOT EXISTS FaireCours (
    Filiere VARCHAR(40),
    Niveau VARCHAR(10),
    Matiere VARCHAR(30),
    Salle VARCHAR(15),
    Duree SMALLINT UNSIGNED CHECK(Duree IN(1, 2)),
    CONSTRAINT PK_FaireCours PRIMARY KEY(Filiere, Niveau, Matiere),
    CONSTRAINT FK_FaireCours_Classe FOREIGN KEY(Filiere, Niveau) REFERENCES Classe(Filiere, Niveau),
    CONSTRAINT FK_FaireCours_Matiere FOREIGN KEY(Matiere) REFERENCES Matiere(Nom)
);

Here are 25 sample INSERT statements:

sql

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Mathématiques', 'A1', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Informatique', 'A2', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Physique', 'A3', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Chimie', 'A4', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Biologie', 'A5', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Anglais', 'A6', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Français', 'A7', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Histoire', 'A8', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Géographie', 'A9', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Philosophie', 'A10', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Economie', 'A11', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Droit', 'A12', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Comptabilité', 'A13', 1);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Informatique', 'Licence 1', 'Marketing', 'A14', 2);

INSERT INTO FaireCours (Filiere, Niveau, Matiere, Salle, Duree)
VALUES ('Science', 'Licence 1', 'Mathémat

gayeabdoulaye163@gmail.com
Donne moi 25 insertion de cette table aussi. CREATE TABLE IF NOT EXISTS Etat (
    Filiere VARCHAR(40),
    Niveau VARCHAR(10),
    Matiere VARCHAR(30),
    HeureEffec TIME,
    HeureRest TIME,
    Etat VARCHAR(10) CHECK(Etat in('EN_ATTENTE', 'EN_COURS', 'TERMINER')),
    CONSTRAINT PK_Etat PRIMARY KEY(Filiere, Niveau, Matiere),
    CONSTRAINT FK_Etat_Classe FOREIGN KEY(Filiere, Niveau) REFERENCES Classe(Filiere, Niveau),
    CONSTRAINT FK_Etat_Matiere FOREIGN KEY(Matiere) REFERENCES Matiere(Nom)
);

Voici 25 exemples d'insertions dans la table Etat:

INSERT INTO Etat (Filiere, Niveau, Matiere, HeureEffec, HeureRest, Etat)
VALUES
("Informatique", "Licence 1", "Algorithmique", "09:00:00", "01:00:00", "EN_COURS"),
("Informatique", "Licence 2", "Bases de donnees", "10:00:00", "02:00:00", "TERMINER"),
("Informatique", "Licence 3", "Programmation web", "11:00:00", "03:00:00", "EN_ATTENTE"),
("Mathematiques", "Licence 1", "Algebre lineaire", "12:00:00", "04:00:00", "EN_COURS"),
("Mathematiques", "Licence 2", "Geometrie", "13:00:00", "05:00:00", "TERMINER"),
("Mathematiques", "Licence 3", "Analyse", "14:00:00", "06:00:00", "EN_ATTENTE"),
("Physique", "Licence 1", "Mechanique", "15:00:00", "07:00:00", "EN_COURS"),
("Physique", "Licence 2", "Electromagnetisme", "16:00:00", "08:00:00", "TERMINER"),
("Physique", "Licence 3", "Quantique", "17:00:00", "09:00:00", "EN_ATTENTE"),
("Biologie", "Licence 1", "Biologie cellulaire", "18:00:00", "10:00:00", "EN_COURS"),
("Biologie", "Licence 2", "Ecologie", "19:00:00", "11:00:00", "TERMINER"),
("Biologie", "Licence 3", "Biotechnologie", "20:00:00", "12:00:00", "EN_ATTENTE"),
("Histoire", "Licence 1", "Antiquite", "21:00:00", "13:00:00", "EN_COURS"),
("Histoire", "Licence 2", "Moyen Age", "22:00:00", "14:00:00", "TERMINER"),
("Histoire", "Licence 3", "Contemporaine", "23:00:00", "15:00:00", "EN_ATTENTE"),
("Litterature", "Licence 1", "Renaissance", "00:00:00", "16:00:00", "EN_COURS"),
("Litterature", "Licence 2", "Romantisme", "01:00:00", "17:00:00", "TERMINER"),
("Litterature", "Licence 3", "Contemporaine", "02:00:00", "18:00:00", "EN_ATTENTE"),
("Philosophie", "Licence 1", "Antiquite", "03:00:00", "19:00:00", "EN_COURS"),
("Philosophie", "Licence 2", "
gayeabdoulaye163@gmail.com
