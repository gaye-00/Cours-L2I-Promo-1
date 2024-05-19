Program modele;
const c = 2;
var nombre : Integer;

//-------------------------------------------------------------------------//
function premier(n, x : Integer): Boolean;
begin
	if ((n = x)) then
		premier := true
	else if (n mod x = 0) then
		premier := false
	else
		premier := premier(n,x+1);
end;
//-------------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////

	repeat
		write('Donner un entier superier a 1 : ');
		readln(nombre);
	until (nombre > 1);

	if (premier(nombre, c) = true) then
		writeln(nombre,' est un nombre premier')
	else
		writeln(nombre,' n''est pas un nombre premier');
	
End.  //////////////////// Fin du prgramme principal ////////////////////