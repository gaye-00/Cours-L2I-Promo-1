program exercivce_td2;
uses wincrt;
Type
		nat_t = (Espace, Lettre, Digit, Autre);
Var
	 nat : nat_t; //Nature
	 c : char;

Begin

	write('Saisir un caractere : ');
	read(c);

	// Analyse de C
	case c Of
	'a'..'z', 'A'..'Z', '_' : nat := Lettre;
	'0'..'9'    						:	nat	:= Digit;
	' '											:	nat := Espace;
	else											nat := Autre;
	end; // case C

	// affichage de nat
	case nat Of
	Espace : writeln('Espace');
	Lettre : writeln('Lettre');
	Digit  : writeln('Digit');
	Autre  : writeln('Autre');
	else   //case nat
  writeln('Erreur case nat : ', ord(nat), 'non prevu');
	end;
	
END.