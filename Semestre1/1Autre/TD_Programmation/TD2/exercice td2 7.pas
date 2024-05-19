program exercivce_td2_;
uses wincrt;
//Type
		//sexe_t = (Femme, Homme);
Const
		sexe_f = Femme;
	sexe_h = Homme;
Var
	sexe_personne,sexe_f,sexe_h: String;
	//sexe : sexe_t;
	age : integer;

Begin

	write('Entrer l''âge de la personne : ');
	read(age);

	write('Quel est le sex de la personne : ');
	read(sexe_personne);

	while ((sexe_personne <> sexe_f) or (sexe_personne <> sexe_h)) do
	Begin
			writeln;
			writeln('Attention le sexe entrer est non valide ');
			write('Entrer encore le sexe de la personne (Homme ou Femme) : ');
			read(sexe_personne);
	end;

END.