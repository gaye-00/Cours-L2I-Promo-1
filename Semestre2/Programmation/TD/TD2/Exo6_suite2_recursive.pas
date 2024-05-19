Program suite2_recursive;
var nombre : Integer;
///////////////////////////////////////////////////////////////////////////
function suite2(n : Integer): real;
begin
	if (n = 0) then
		suite2 := 2
	else if (n = 1) then
		suite2 := 3
	else
		suite2 := (2/3)*suite2(n-1) - (1/4)*suite2(n-2);
end;
///////////////////////////////////////////////////////////////////////////
Begin // Debut du prgramme principal
	repeat
		write('Donner un nombre pour la n-eme terme de la suite : ');
		readln(nombre);
	until (nombre >= 0);

	writeln;
	writeln('La ',nombre,'eme terme de la nuite est : ',suite2(nombre):6:2);
End.  // Fin du prgramme principal