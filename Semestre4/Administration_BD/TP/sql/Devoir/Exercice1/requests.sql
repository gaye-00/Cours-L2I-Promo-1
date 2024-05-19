-- I. Langage de définition de données.

-- b
-- i. Modifier la clé primaire de la table Matiere qui doit être composée de Nom et de Niveau
-- (on suppose que toutes les tables sont déja créées)

ALTER TABLE Etat DROP CONSTRAINT FK_Etat_Matiere;
ALTER TABLE FaireCours DROP CONSTRAINT FK_FaireCours_Matiere;
ALTER TABLE Matiere DROP PRIMARY KEY;
ALTER TABLE Matiere ADD CONSTRAINT PK_Matiere PRIMARY KEY(Nom, Niveau);
ALTER TABLE FaireCours ADD CONSTRAINT FK_FaireCours_Matiere FOREIGN KEY(Matiere) REFERENCES Matiere(Nom);
ALTER TABLE Etat ADD CONSTRAINT FK_Etat_Matiere FOREIGN KEY(Matiere) REFERENCES Matiere(Nom);

-- ii. Renommer l'attribut niveau de la table FaireCours pour y mettre Niv_Classe
ALTER TABLE FaireCours MODIFY Niveau Niv_Classe VARCHAR(10);

-- iii. Ronommer la table FaireCours en Cours
RENAME TABLE FaireCours TO Cours;

-- iv. Ajouter une contraite fixant les volumes horaires entre 24 et 72h.
ALTER TABLE Matiere ADD CONSTRAINT fixer_Volume_Horaire CHECK(Vol_Horaire BETWEEN 24 AND 72);

-- c. Créez une vue nommée Matiere_L2_Info (NomInf, CreditInf, CoefficientInf) et contenant les matiéres
-- domaine Informatique de niveau L2.
CREATE VIEW Matiere_L2_Info(NomInf, CreditInf, CoefficientInf) AS SELECT Nom, Credit, Coefficient FROM Matiere
WHERE Domaine = "Informatique" AND Niveau = "Licence2";

-- II. Langage de manipulation de données
-- a. Affichez la liste de matières (Nom, Credit, Coefficient) de niveau L2 et de domaine Informatique déja dispensées.
SELECT Nom, Credit, Coefficient FROM Matiere NATUREL JOIN Etat ON Filiere = Nom
WHERE Matiere.Niveau = "Licence2" AND Matiere.Domaine = "Informatique" AND Etat.Etat = "TERMINER";

-- b. Quelle sont les matiéres de domaine Informatique de niveau L2 faites par deux classes de filières différentes.
