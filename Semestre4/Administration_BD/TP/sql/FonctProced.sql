-- a. Créer une fonction qui renvoie le volume horaire total d’un enseignant donné si pour
-- chaque matière le CM, le TD et TP ont le même volume horaire ;

Delimiter &
SET GLOBAL LOG_BIN_TRUST_FUNCTION_CREATORS = 1;
-- Pour changer la configuration de mysql pour utiliser les fonctions

CREATE FUNCTION VolumesHoraire(idEnseignant VARCHAR(7)) RETURNS SMALLINT 
BEGIN
    DECLARE i INTEGER DEFAULT 0;
    DECLARE volT SMALLINT DEFAULT 0;
    DECLARE som INTEGER;
    DECLARE ma VARCHAR(35);
    DECLARE t CHAR(3);

    DECLARE calculerVH CURSOR FOR
    SELECT Matiere,Type,VolHoraire/3  -- Pour le VH on divise par 3 
    FROM Charger NATUREL JOIN Matiere 
    WHERE Matiere = Nom AND idEnseignant = Enseignant;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET i = 1;
    OPEN calculerVH;
        iteration : LOOP
            FETCH calculerVH INTO ma,t,som;
                IF i = 1 THEN
                    LEAVE iteration;
                END IF;
                SET volT := volT + som;
        END LOOP;
    CLOSE calculerVH;

    RETURN volT;
END;&
Delimiter ;

----------------------------------------------------------------------------------------------------------
-- b. Créer une fonction qui renvoie le grade de l’enseignant qui dispense le CM du cours de
-- probabilité ;

Delimiter &
CREATE FUNCTION gradeEnseignant() RETURNS VARCHAR(35)
BEGIN
    DECLARE gra VARCHAR(25);

    SELECT Grade INTO gra 
    FROM Enseignant NATUREL JOIN Charger
    WHERE Matiere = 'Probabilité' AND Type = 'CM' AND Matricule = Enseignant;

    RETURN gra;
END;&
Delimiter ;

----------------------------------------------------------------------------------------------------------
Set @id_Var = VolumesHoraire("2 002 N") ;
Select @id_Var ;

Set @id_Var = gradeEnseignant();
SELECT @id_Var;

----------------------------------------------------------------------------------------------------------
-- c. Créer une fonction qui renvoie le nom du département qui a le plus d’assistant.

Delimiter &
CREATE FUNCTION plusAssistance() RETURNS VARCHAR(30)
BEGIN
    -- DECLARE nbAssistance SMALLINT;
    DECLARE i INTEGER DEFAULT 0;
    DECLARE max SMALLINT DEFAULT 0;
    DECLARE DepActuel VARCHAR(35);
    DECLARE DepMax VARCHAR(35);

    DECLARE parcours CURSOR FOR
    SELECT count(*), NomDept
    FROM Service NATUREL JOIN Enseignant
    ON Enseignant = Matricule WHERE Grade = "Assistant"
    GROUP BY NomDept;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET i = 1;
    OPEN parcours;
        Boucle : LOOP
            FETCH parcours INTO n, DepActuel;
                IF i = 1 THEN
                    LEAVE Boucle;
                END IF;

                IF n > max THEN
                    SET max := n;
                    SET DepMax := DepActuel;
                END IF;
        END LOOP;
    CLOSE parcours;

    RETURN DepMax;
    
END;
&
Delimiter ;


Delimiter &
CREATE FUNCTION PLUSAssistance() RETURNS VARCHAR(30)
BEGIN
    -- DECLARE nbAssistance SMALLINT;
    DECLARE i INTEGER DEFAULT 0;
    DECLARE max SMALLINT DEFAULT 0;
    -- DECLARE DepActuel VARCHAR(35);
    DECLARE DepMax VARCHAR(35);

    DECLARE parcours CURSOR FOR
    SELECT count(*) AS NbAssistant , NomDept
    FROM Service NATUREL JOIN Enseignant
    ON Enseignant = Matricule WHERE Grade = "Assistant"
    GROUP BY NomDept;

    SELECT MAX(NbAssistant) INTO max FROM parcours;
    SELECT NomDept INTO DepMax FROM parcours
    WHERE NbAssistant = max;

    RETURN DepMax;
    
END;
&
Delimiter ;

Set @id_Var = PLUSAssistance() ;
Select @id_Var ;
----------------------------------------------------------------------------------------------------------
-- a. Créer une procédure qui affiche le numéro de matricule, le nom et le prénom de
-- l’enseignant qui fait le TD d’Algorithme et programmation ;

DELIMITER &
CREATE PROCEDURE NumeroMatricule()
BEGIN
    DECLARE mat CHAR(7);
    DECLARE no VARCHAR(15);
    DECLARE pr VARCHAR(25);
    DECLARE i SMALLINT UNSIGNED DEFAULT 0;

    DECLARE C1 CURSOR FOR SELECT Matricule, Nom, Prenom
    FROM Enseignant NATUREL JOIN Charger ON Enseignant = Matricule
    WHERE Type = "TD" AND Matiere = "Algorithme et programmation";

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET i = 1;
    OPEN C1;
        Boucle : LOOP
            FETCH C1 INTO mat, no, pr;
            IF i = 1 THEN
                LEAVE Boucle;
            END IF;

            SELECT mat, no, pr;
        END LOOP;
    CLOSE C1;
END;&
DELIMITER ;

CALL NumeroMatricule();
----------------------------------------------------------------------------------------------------------
-- b. Créer une procédure qui affiche la liste des enseignants de chaque département d’une UFR donnée ;
DELIMITER &
CREATE PROCEDURE liste_ens(IN D VARCHAR(25))
BEGIN
    DECLARE mat CHAR(7);
    DECLARE no VARCHAR(15);
    DECLARE pr VARCHAR(25);
    -- DECLARE noDep VARCHAR(25);
    DECLARE i SMALLINT UNSIGNED DEFAULT 0;

    DECLARE C1 CURSOR FOR SELECT Matricule, Nom, Prenom;
     -- NomDept;
    FROM Enseignant NATUREL JOIN Service ON Enseignant = Matricule
    WHERE NomDept = D;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET i = 1;
    OPEN C1;
    Boucle : LOOP
        FETCH C1 INTO mat, no, pr;
        -- noDep;
        IF i = 1 THEN
            LEAVE Boucle;
        END IF;

        SELECT mat, no, pr;
        -- noDep;
    END LOOP;

END;&
DELIMITER ;

CALL liste_ens("Mathematiques");
CALL liste_ens("Physique");

-- Correction classe
DELIMITER &
CREATE PROCEDURE afficheLesEnseignant(IN U VARCHAR(30))
BEGIN
    SELECT Matricule, Enseignant.Nom, Prenom, Grade, Specialite
    FROM Enseignant, Service, Departement
    WHERE NomDept = Departement.Nom AND Enseignant = Matricule AND UFR = U
    ORDER BY Specialite ASC;
END;&
DELIMITER ;

CALL afficheLesEnseignant("UFR ST");

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


----------------------------------------------------------------------------------------------------------
-- c. Créer une procédure qui affiche la liste des UFR avec leurs départements.
DELIMITER &
CREATE PROCEDURE liste_UFR()
BEGIN
    DECLARE noDep VARCHAR(25);
    DECLARE ufr VARCHAR(10);
    DECLARE i SMALLINT UNSIGNED DEFAULT 0;

    DECLARE C1 CURSOR FOR SELECT  Nom, UFR FROM Departement;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET i = 1;
    OPEN C1;
    Boucle : LOOP
        FETCH C1 INTO noDep, ufr;
        IF i = 1 THEN
            LEAVE Boucle;
        END IF;

        SELECT noDep, ufr;
    END LOOP;
END;&
DELIMITER ;

CALL liste_UFR();


DELIMITER &
CREATE PROCEDURE liste_UFR1()
BEGIN
    SELECT Nom, UFR FROM Departement;
END;&
DELIMITER ;

CALL liste_UFR1();

DELIMITER $$
CREATE PROCEDURE UFR_Departement()
BEGIN
    DECLARE i, j, n SMALLINT;
    DECLARE u, d, a, f VARCHAR(30);
    DECLARE nb, an INTEGER;

    DECLARE C1 CURSOR FOR SELECT DISTINCT(UFR),
    COUNT(*) AS Nb_Departement FROM Departement
    GROUP BY UFR ORDER BY UFR;

    DECLARE C2 CURSOR FOR SELECT * FROM Departement ORDER BY UFR;

    SELECT COUNT(DISTINCT(UFR)) INTO n FROM Departement;

    OPEN C1;
        OPEN C2;
            SET i := 1;

            WHILE i <= n DO
                FETCH C1 INTO u, nb;
                SELECT u;
                SET j := 1;

                WHILE j <= nb DO
                    FETCH C2 INTO d, f, a, an;
                    SELECT d, a, an;
                    SET j := j + 1;
                END WHILE;

                SET i := i + 1;
            END WHILE;
        CLOSE C2;
    CLOSE C1;
END; $$
DELIMITER ;
CALL UFR_Departement();