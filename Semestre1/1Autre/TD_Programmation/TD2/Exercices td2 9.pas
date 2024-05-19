program exercivce_td2_9;
uses wincrt;
Var
		copie : integer;
		copie_10_30, copie_plus_30 : integer;

Begin

	write('Entrer le nombre de photocopie à effetueés : ');
	read(copie);

	while (copie < 0) Do
	Begin
			writeln;
			writeln('Le nombre entrer est non valide');
			write('Entrer encore le nombre de photocopie à effetueés : ');
			read(copie);
	end;

	if (copie > 0) and (copie <= 10) Then
			writeln('Le prix à payer est ', copie*50,' Franc CFA')

		Else if (copie > 10) and (copie <= 30) Then
		Begin
				copie_10_30 := copie - 10;
				writeln('Le prix à payer est ',copie_10_30*35 + 10*50,' Franc CFA');
		end

			Else if (copie > 30) Then
			Begin
					copie_plus_30 := copie - 30;
					writeln('Le prix à payer est ',copie_plus_30*25 + 20*35 +10*50,' Franc CFA');
			end;

END.