program chiffr_ou_lettre;
Type ensemble = char;
var chiffre, lettre : set of ensemble;
	car : char;

Begin
	chiffre := ['0'..'9'];
	lettre := ['a'..'z', 'A'..'Z'];
	//ou lettre := ['a'..'z'] + ['A'..'Z'];

	write('Entrer un caractere : ');
	readln(car);

	if (car in chiffre) then
		writeln(car,' est un chiffre')

	else if (car in lettre) then
		writeln(car,' est un lettre')

	else
		writeln(car,' n''est ni lettre ni chiffre');
End.