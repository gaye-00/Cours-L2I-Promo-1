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

-- Fonction retournant le grade l'enseignant
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

/*
Delimiter &
CREATE FUNCTION plusAssistant() RETURNS VARCHAR(65)
BEGIN
    DECLARE dep VARCHAR(65);
    DECLARE nbAs ;
    DECLARE i SMALLINT DEFAULT 0;

    DECLARE nbAsDepartement CURSOR FOR
    SELECT NomDept, COUNT(*) AS nbreAssistants 
    FROM Servir,Enseignant
    WHERE Matricule = Enseignant AND Grade = 'Assistant' GROUP BY NomDept;
END;&
Delimiter ;
*/

Set @id_Var = VolumesHoraire("2 002 N") ;
Select @id_Var ;

Set @id_Var = gradeEnseignant();
SELECT @id_Var;

Delimiter &
CREATE FUNCTION plusAssistance() RETURNS VARCHAR(30)
BEGIN
    -- DECLARE nbAssistance SMALLINT;
    DECLARE i INTEGER DEFAULT 0;
    DECLARE max SMALLINT DEFAULT 0;
    DECLARE DepActuel VARCHAR(35);
    DECLARE DepMax VARCHAR(35);

    DECLARE parcours CURSOR FOR
    SELECT count(*), nomDept
    FROM Service NATUREL JOIN Enseignant
    ON Enseignant = Matricule WHERE Grade = "Assistant"
    GROUP BY nomDept;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET i = 1;
    OPEN parcours;
        Boucle : LOOP
            FETCH parcours INTO n, DepActuel;
                IF i = 1 THEN LEAVE Boucle;
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
    DECLARE DepActuel VARCHAR(35);
    DECLARE DepMax VARCHAR(35);

    DECLARE parcours CURSOR FOR
    SELECT count(*) AS NbAssistant , nomDept
    FROM Service NATUREL JOIN Enseignant
    ON Enseignant = Matricule WHERE Grade = "Assistant"
    GROUP BY nomDept;

    SELECT MAX(NbAssistant) INTO max FROM parcours;
    SELECT nomDept INTO DepMax FROM parcours
    WHERE NbAssistant = max;

    RETURN DepMax;
    
END;
&
Delimiter ;