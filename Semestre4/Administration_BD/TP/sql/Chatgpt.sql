CREATE TABLE Departement (
    Nom VARCHAR(255) NOT NULL,
    UFR VARCHAR(255) NOT NULL,
    Adresse VARCHAR(255) NOT NULL,
    AnneeOuverture INT NOT NULL,
    PRIMARY KEY (Nom)
);

CREATE TABLE Enseignant (
    Matricule INT NOT NULL,
    Nom VARCHAR(255) NOT NULL,
    Prenom VARCHAR(255) NOT NULL,
    Grade VARCHAR(255) NOT NULL,
    Specialite VARCHAR(255) NOT NULL,
    PRIMARY KEY (Matricule)
);

CREATE TABLE Servir (
    NomDept VARCHAR(255) NOT NULL,
    Enseignant INT NOT NULL,
    PRIMARY KEY (NomDept, Enseignant),
    FOREIGN KEY (NomDept) REFERENCES Departement(Nom),
    FOREIGN KEY (Enseignant) REFERENCES Enseignant(Matricule)
);

CREATE TABLE Matiere (
    Nom VARCHAR(255) NOT NULL,
    Credit INT NOT NULL,
    VolHoraire INT NOT NULL,
    Coefficient INT NOT NULL,
    Categorie VARCHAR(255) NOT NULL,
    PRIMARY KEY (Nom)
);

CREATE TABLE Charger (
    Enseignant INT NOT NULL,
    Matiere VARCHAR(255) NOT NULL,
    Type VARCHAR(255) NOT NULL,
    PRIMARY KEY (Enseignant, Matiere),
    FOREIGN KEY (Enseignant) REFERENCES Enseignant(Matricule),
    FOREIGN KEY (Matiere) REFERENCES Matiere(Nom)
);



CREATE TRIGGER check_specialite
BEFORE INSERT ON Enseignant
FOR EACH ROW
BEGIN
    DECLARE specialite_exists INT;
    SELECT COUNT(*) INTO specialite_exists FROM Departement WHERE Specialite = NEW.Specialite;
    IF specialite_exists = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Specialite de l''enseignant ne correspond à aucun département';
    END IF;
END;


CREATE TRIGGER calculate_vh
BEFORE INSERT ON Matiere
FOR EACH ROW
BEGIN
    SET NEW.VolHoraire = NEW.Credit * 12;
END;

-- b. Créer une procédure qui affiche la liste des enseignants de chaque
-- département d’une UFR donnée ;

 Créer une procédure qui affiche la liste des enseignants de chaque
département d’une UFR donnée en utilisant GROUP_CONCAT().

DELIMITER $$
CREATE PROCEDURE display_enseignants_by_ufr(IN ufr VARCHAR(255))
BEGIN
    SELECT d.Nom AS Departement, e.Nom, e.Prenom
    FROM Departement d
    JOIN Service s ON d.Nom = s.NomDept
    JOIN Enseignant e ON s.Enseignant = e.Matricule
    WHERE d.UFR = ufr;
END $$
DELIMITER ;
CALL display_enseignants_by_ufr('UFR ST');

DELIMITER $$
CREATE PROCEDURE display_enseignants_by_ufr_group_concat_single_department(IN ufr VARCHAR(255))
BEGIN
    SELECT DISTINCT d.Nom AS Departement, GROUP_CONCAT(e.Nom, ' ', e.Prenom) AS Enseignants
    FROM Departement d
    JOIN Service s ON d.Nom = s.NomDept
    JOIN Enseignant e ON s.Enseignant = e.Matricule
    WHERE d.UFR = ufr
    GROUP BY d.Nom;
END; $$
DELIMITER ;

CALL display_enseignants_by_ufr_group_concat_single_department('UFR ST');



-- c. Créer une procédure qui affiche la liste des UFR avec leurs départements.
DELIMITER $$
CREATE PROCEDURE display_ufr_departments()
BEGIN
    SELECT UFR,GROUP_CONCAT(Nom) as Departments
    FROM Departement
    GROUP BY UFR;
END $$
DELIMITER ;


CALL display_ufr_departments();

-- mysql> SELECT NOW() AS HEURE;



DELIMITER $$
CREATE PROCEDURE display_enseignants_by_ufr_group_concat(IN ufr VARCHAR(255))
BEGIN
    SELECT d.Nom AS Departement, GROUP_CONCAT(e.Nom, ' ', e.Prenom) AS Enseignants
    FROM Departement d
    JOIN Service s ON d.Nom = s.NomDept
    JOIN Enseignant e ON s.Enseignant = e.Matricule
    WHERE d.UFR = ufr
    GROUP BY d.Nom;
END $$
DELIMITER ;

CALL display_enseignants_by_ufr_group_concat('nom_ufr');
CALL display_enseignants_by_ufr_group_concat('UFS ST');
