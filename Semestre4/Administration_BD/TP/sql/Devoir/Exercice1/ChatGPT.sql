-- ii. Renommer l'attribut niveau de la table FaireCours pour y mettre Niv_Classe
ALTER TABLE FaireCours
RENAME COLUMN Niveau TO Niv_Classe;

-- iii. Ronommer la table FaireCours en Cours
RENAME TABLE FaireCours TO Cours;

-- iv. Ajouter une contraite fixant les volumes horaires entre 24 et 72h.
ALTER TABLE Matiere
ADD CONSTRAINT CHK_VolumeHoraire
CHECK (Vol_Horaire BETWEEN 24 AND 72);


CREATE VIEW Matiere_L2_Info AS
SELECT Nom AS NomInf, Credit AS CreditInf, Coefficient AS CoefficientInf
FROM Matiere
WHERE Niveau='L2' AND Domaine='Informatique';

-- a. Affichez la liste de matières (Nom, Credit, Coefficient) de niveau L2 et de domaine Informatique déja dispensées.
SELECT Matiere.Nom, Matiere.Credit, Matiere.Coefficient
FROM Matiere
JOIN Etat ON Matiere.Nom = Etat.Matiere
WHERE Matiere.Niveau = 'L2' AND Matiere.Domaine = 'Informatique' AND Etat.Etat = 'TERMINER';

-- b. Quelle sont les matiéres de domaine Informatique de niveau L2 faites par deux classes de filières différentes.
SELECT DISTINCT Matiere.Nom, Matiere.Credit, Matiere.Coefficient
FROM Matiere
JOIN Cours ON Matiere.Nom = Cours.Matiere
JOIN Classe ON Cours.Niv_Classe = Matiere.Niveau AND Cours.Filiere = Classe.Filiere
WHERE Matiere.Domaine = 'Informatique' AND Matiere.Niveau = 'L2'
GROUP BY Matiere.Nom, Matiere.Credit, Matiere.Coefficient
HAVING COUNT(DISTINCT Classe.Filiere) >= 2;

-- Cette requête utilise des jointures pour associer les informations des tables Matière, Cours et
-- Classe. Elle filtre les matières de domaine Informatique de niveau L2 et regroupe les résultats par
-- nom de matière, crédit et coefficient. Enfin, elle utilise l'instruction HAVING pour s'assurer que
-- chaque matière a été dispensée dans au moins deux filières différentes.

-- c. Afficher la classe avec plus petite effectif
SELECT Filiere, Niveau, Effectif
FROM Classe
ORDER BY Effectif
LIMIT 1;
