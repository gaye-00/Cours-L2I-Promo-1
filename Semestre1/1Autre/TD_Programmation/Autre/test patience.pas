program exercivce_td2_;
uses wincrt;
Var
	T: Array[1..100] of string;
	 i : Integer;

Begin

  i := 1;
	write('Quel est le sexe de la personne : ');
	read(T[i]);

	write('Entrer l''âge de la personne : ');
	read(age);

  if ((T[i] <> 'Femme')) or ((T[i] <> 'Homme')) Then
	Begin
	while ((T[i] <> 'Femme')) or ((T[i] <> 'Homme')) do
	Begin
			writeln;
			writeln('Attention le sexe entrer est non valide ');
			write('Entrer encore le sexe de la personne (Homme ou Femme) : ');
			read(T[i]);
	end;
	end;

END.