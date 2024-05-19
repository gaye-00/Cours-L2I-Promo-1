program boulagerie;
uses wincrt;
Var
   jour : 0..6;
	 heure : 0..23;

Begin

		write('Entrer le jour de la semaine : ');
		read(jour);

		write('Entrer l''heure de la semaine : ');
		read(heure);

		if ((heure < 7) and (heure < 13)) or ((heure < 16) and (heure > 20)) Then
		Begin
		 writeln('La boulangerie est non ouverte');
		 exit;
		end;

			if (jour = 1) Then
			Begin
			 writeln('La boulangerie est non ouverte');
			 exit;
			 end;

			 	if (jour = 0) and ((heure < 16) or (heure > 20)) Then
				Begin
				 writeln('La boulangerie est non ouverte');
				 exit;
			  end;

			 		if (jour = 0) and ((heure >= 16) and (heure <= 20)) Then
					Begin
				   writeln('La boulangerie est ouverte');
					 exit;
					end;

				 		if ((jour = 2) or (jour = 3) or (jour = 4) or (jour = 5) or (jour = 6)) and (((heure >= 7) and (heure <= 13)) or ((heure >= 16) and (heure <= 20))) Then
						Begin
					   writeln('La boulangerie est ouverte');
						 exit;
						end;

								if ((jour = 2) or (jour = 3) or (jour = 4) or (jour = 5) or (jour = 6)) and (((heure < 7) or (heure > 13)) and ((heure < 16) or (heure > 20))) Then
								Begin
								 writeln('La boulangerie est non ouverte');
								 exit;
								end;


end.