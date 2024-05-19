Program suite_recursive;
var nombre : Integer;
///////////////////////////////////////////////////////////////////////////
function suite(n : Integer): Integer;
begin
	if (n = 0) then 
		suite := 1
	else
		suite := 3*sqr(suite(n-1)) + 2;
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