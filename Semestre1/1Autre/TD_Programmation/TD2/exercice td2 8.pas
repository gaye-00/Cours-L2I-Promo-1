program exercivce_td2_8;
uses wincrt;
//Type
	//	heure_t = 0..23;
	//	minutes_t = 0..59; 
Var
	 heure : Integer;
	 minutes : Integer;

Begin

	write('Entre l''huere actuelle : ');
	read(heure);

	while (heure < 0) or (heure > 23) Do
  Begin
	    writeln;
			writeln('L''heure entre est non valide');
			write('Entrer encore l''heure svp : ');
			read(heure);
	end;

	write('Entrer le nombre de minutes : ');
	read(minutes);

	while (minutes < 0) or (minutes > 59) Do
  Begin
	    writeln;
			writeln('Le nombre de minutes entrer est non valide');
			write('Entrer encore le nombre de minutes : ');
			read(minutes);
	end;
	 if (minutes <= 58 ) Then
	    //minutes := minutes +1;
	    writeln(heure,'h ', minutes+1,'mn')

		Else if (minutes = 59) and (heure <> 23) Then
			  writeln(heure +1,'h ', minutes*0,'mn')

			Else
					writeln(heure*0,'h ', minutes*0,'mn');
	 

END.