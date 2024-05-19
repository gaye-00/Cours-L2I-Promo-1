
program exercivce_td2;
uses wincrt;
Var
	 car : char;

Begin

	write('Saisir un caractere : ');
	read(car);

  case car Of
	'a'..'z', 'A'..'Z' :  writeln('Vous avez saisie une lettre');
	'0'..'9' :  writeln('Vous avez saisie une chiffre');
	//'0'..'-9' : writeln('');
	else  writeln('Autre');
	end;    
	

END.