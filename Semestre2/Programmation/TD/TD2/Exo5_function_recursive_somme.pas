Program function_recursive_somme;
var nombre : Integer;
///////////////////////////////////////////////////////////////////////////
function somme(n : Integer): Integer;
begin
	if (n = 0) then
		somme := 0

	else if (n > 0) then
		somme := n + somme(n-1)

	else
		somme := n + somme(n+1);
end;
///////////////////////////////////////////////////////////////////////////
Begin // Debut du prgramme principal
	write('Donner un nombre : ');
	readln(nombre);

	writeln;
	writeln('La somme de 1 jusqu''a ',nombre,' est : ',somme(nombre));
End.  // Fin du prgramme principal