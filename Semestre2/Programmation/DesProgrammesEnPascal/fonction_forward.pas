Program function_forward;
var nombre : Integer;
//------------------------------------------------------------------------//
function impaire(n : Integer): Boolean; forward;
function paire(n : Integer): Boolean;
begin
	if (n = 0) then 
		paire := true
	else
		paire := impaire(n-1);
end;
//------------------------------------------------------------------------//
function impaire(n : Integer): Boolean;
begin
	if (n = 1) then 
		impaire := true
	else if (n = 0) then
		impaire := false
	else
		impaire := paire(n-1);
end;
//------------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////
	write('Donner une valeur : ');
	readln(nombre);

	writeln;
	writeln('  ',paire(nombre));
End. //////////////////// Fin du prgramme principal ////////////////////