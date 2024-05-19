Program les_pointeurs;
uses WinCrt;
Type Type_Pointeur = ^Integer;
Var duree, minutes, heures : Integer;
Procedure changement (P_duree : Integer; nombresHeures, nombresMinutes : Type_Pointeur);
Begin
		nombresHeures^ := P_duree div 60;
		nombresMinutes^ := P_duree mod 60;
end;

BEGIN

		Repeat
				write('Entrer le nombre de minutes : ');
				read(duree);
		Until (duree > 0);
		
		heures := 0; minutes := 0;
		changement (duree, @heures, @minutes);
		writeln;
		writeln(duree,' est composee de ',heures,' Heures et ',minutes,' Minutes');

	 ReadKey
END.