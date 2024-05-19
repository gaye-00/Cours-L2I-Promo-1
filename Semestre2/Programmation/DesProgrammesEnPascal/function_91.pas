Program modele;
var nombre : integer;
//----------------------------------------------------------------------//
function f(n: integer ): integer ;
begin
	if n > 100 then
		f:=n -10
	else
		f:=f(f(n +11) );
end ;
//----------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////

	write('Donner un entier : ');
	readln(nombre);

	writeln;
	writeln('	',f(nombre));

End.  //////////////////// Fin du prgramme principal ////////////////////