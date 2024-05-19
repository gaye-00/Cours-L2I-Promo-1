program test_patience_1;
uses wincrt;
Var
		sexe : char;
Procedure homme;
Var
	age_h : Integer;
Begin
	write('Entrer l''âge de de l''homme : ');
	read(age_h);
	while (age_h <= 0) Do
	Begin
			writeln;
			writeln('L''âge de l''homme entrrer est non valide');
			write('Entrer encore l''âge de l''homme svp : ');
			read(age_h);
	end;
	if (age_h >= 20)Then
		 Begin
			writeln('Cet homme est imposable');
			exit;
		 end;
	  if (age_h < 20)Then
		 Begin
	    writeln('Cet homme est non imposable');
		  exit;
		 end;
end;
Procedure femme;
Var
	age_f : Integer;
Begin
	write('Entrer l''âge de la femme : ');
	read(age_f);
	while (age_f <= 0) Do
	Begin
			writeln;
			writeln('L''âge de la femme entrrer est non valide');
			write('Entrer encore l''âge de la femme svp : ');
			read(age_f);
	end;
		 if (age_f >= 18) and (age_f <= 35) Then
	 Begin
			writeln('Cette femme est imposable');
			exit;
	  end
	  else if (age_f < 18) or (age_f > 35) Then
		Begin
	  writeln('Cette femme est non imposable');
		exit;
		end;
end;



Begin

	write('Entrer le sexe de la personne (H ou F) : ');
	read(sexe);

	if (sexe = 'H') Then
	 Begin
		  homme;
			exit;
	 end;

		if (sexe = 'F') Then
		Begin
				femme;
				exit;
		end;

	if (sexe <> 'H')	or (sexe <> 'F') Then
	Begin
			writeln;
			writeln('Le sexe de la personne entrer est non valide');
			//writeln('Entrer encore le sexe svp (F ou H) : ');
			//read(sexe);
	end;

end.