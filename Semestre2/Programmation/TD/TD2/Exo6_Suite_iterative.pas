Program suite_iterative;
var nombre : Integer;
///////////////////////////////////////////////////////////////////////////
function suite(n : Integer): Integer;
var Un, i : Integer;
begin
	Un := 1;
	for i := 1 to n do
       Un := 3*Un*Un + 2;
    suite := Un;
end;
///////////////////////////////////////////////////////////////////////////
Begin // Debut du prgramme principal
	repeat
		write('Donner un nombre pour la n-eme terme de la suite : ');
		readln(nombre);
	until (nombre >= 0);

	writeln;
	writeln('La ',nombre,'eme terme de la nuite est : ',suite(nombre));
End.  // Fin du prgramme principal