Program fonction_forward;
var nombre : Integer;

//----------------------------------------------------------------------//
function g(x : Integer): Integer; forward;
function f(x : Integer): Integer;
begin
	if (x <= 1) then
		f := 1
	else
		f := g(x+2);
end;
//----------------------------------------------------------------------//
function g(x : Integer): Integer;
begin
		g := f(x - 3) + 4;
end;
//----------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////

	write('Donner un entier : ');
	readln(nombre);

	writeln;
	writeln('f(',nombre,') : ',f(nombre));
	writeln('g(',nombre,') : ',g(nombre));

End.  //////////////////// Fin du prgramme principal ////////////////////