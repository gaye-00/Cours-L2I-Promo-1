-- a. Créer un trigger qui calcule et attribut un volume horaire à chaque nouvelle matière selon le
-- crédit (VH = Credit * 12) ;

Delimiter &
create Trigger CalculVolumeHoraire Before Insert on Matiere For each Row
Begin
	Declare VolH integer;
	set VolH = new.credit * 12;
	set new.VolHoraire = VolH;
End;
&
Delimiter ;

---------------------------------------------------------------------------------------------------------------
-- b. Créer un trigger qui crée et attribut un numéro de matricule à chaque nouvel enseignant. Les
-- matricules sont de la forme 1/2 (Homme ou Femme) NUM qui est le numéro de l’enseignant
-- C qui est la première lettre du nom de l’enseignant. Par exemple (1 045 G) ;

INSERT INTO Matiere(Nom, credit, Coefficient, Categorie, VolHoraire) 
values ('Algo - Prog', 4, 2, 'Fondementale', 48);

alter TABLE Enseignant add Sexe varchar(8) check(Sexe in('Masculin', 'Feminin'));

---------------------------------------------------------------------------------------------------------------
Delimiter &
create Trigger AjoutMatricule Before Insert On Enseignant FOR each Row
Begin
	Declare m char(7);
	Declare n smallInt;
	Declare s smallInt;
	Declare c char(1);

	SELECT COUNT(*) Into n From Enseignant;
	SET n = n + 1;
	SET c = SUBSTRING(New.Nom, 1, 1);

	If New.Sexe = 'Masculin' Then
		SET s = 1;
	Else
		SET s = 2;
	End If;

	If n < 10 Then 
		SET m = CONCAT(s, ' ', '00', n, ' ', c);
	ElseIf n < 100 Then
		SET m = CONCAT(s, ' ', '0', n, ' ', c);
	ElseIf n < 1000 Then
		SET m = CONCAT(s, ' ', n, ' ', c);
	Else
		SET s = 'a';
	End If;

	SET New.Matricule = m;
End;

&
Delimiter ;

---------------------------------------------------------------------------------------------------------------
-- c. Créer un trigger qui donne le nom du département d’un enseignant selon sa spécialité ;

Delimiter &
CREATE TRIGGER NomDepartement AFTER INSERT ON Enseignant FOR EACH ROW
Begin

	INSERT INTO Service VALUES(NEW.Specialite, NEW.Matricule);
End;
&
Delimiter ;

---------------------------------------------------------------------------------------------------------------
-- d. Créer un trigger qui annule l’insertion d’un enseignant si sa spécialité ne correspond à aucun
-- département.

-- Delimiter
-- CREATE TRIGGER AnnuleInsertion AFTER DELETE ON Enseignant FOR EACH ROW
-- Begin
-- 	Declare ok boolean default 0;
-- 	Declare dep varchar(20);

-- 	SET dep = NEW.Specialite;

-- 	if dep == 'Mathematique' or dep == 'Lettres Modernes' or dep == 'Droit des affaires'
-- End;
-- &
-- Delimiter ;


Delimiter &
CREATE TRIGGER AnnuleInsertion BEFORE INSERT ON Enseignant FOR EACH ROW
Begin
	Declare n integer default 0;
	SELECT COUNT(*) INTO n FROM Departement WHERE Departement.Nom = NEW.Specialite;

	IF n = 0 THEN
		SET n = 'A';
	END IF;

End;
&
Delimiter ;

---------------------------------------------------------------------------------------------------------------
