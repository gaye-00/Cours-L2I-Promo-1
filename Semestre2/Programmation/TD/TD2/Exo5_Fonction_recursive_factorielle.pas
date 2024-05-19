Program function_recursive_factorielle;
var nombre : Integer;
///////////////////////////////////////////////////////////////////////////
function fact(n : Integer): Integer;
Begin
	if (n = 0) then
		fact := 1

	else
		fact := n * fact(n-1);
end;
///////////////////////////////////////////////////////////////////////////
Begin // Debut du prgramme principal
	write('Donner un nombre : ');
	readln(nombre);

	writeln;
	writeln(nombre,'! = ',fact(nombre));
End.  // Fin du prgramme principal