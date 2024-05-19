Program type_chiffre_lettre;
Type ensemble = set of char;
var lettre, chiffre : ensemble;
	elem : char;

//-------------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////

	chiffre := ['0'..'9'];
	lettre := ['a'..'z'] + ['A'..'Z'];

	write('Donner un element  a chercher : ');
	readln(elem);

	if (elem in chiffre) then
		writeln(elem,' est dans l''ensemble des chiffres')
	else
		writeln(elem,' n''est pas dans l''ensemble des chiffres');

	writeln;
	if (elem in lettre) then
		writeln(elem,' est dans l''ensemble des lettres')
	else
		writeln(elem,' n''est pas dans l''ensemble des lettres');

End.  //////////////////// Fin du prgramme principal ////////////////////