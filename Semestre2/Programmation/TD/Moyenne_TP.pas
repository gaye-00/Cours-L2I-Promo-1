Program modele;
const max_c = 2000;
Type tab = array[1..max_c] of integer;
var T : tab;
	taille, i : integer;
	m : real;

//----------------------------------------------------------------------//
function moyenne(t: tab; n: integer ): real ;
begin
	if n = 1 then
		moyenne :=t[1]
	else
		moyenne :=((n -1)* moyenne (t,n -1)+t[n])/n;
end;
//----------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////

	repeat
		write('Donner la taille du tableau : ');
		readln(taille);
	until ((taille > 0) and (taille <= max_c));

	writeln;
	for i := 1 to taille do
	begin
		write('Donner T[',i,'] : ');
		readln(T[i]);
	end;

	writeln;
	m := moyenne(T, taille);
	writeln('La moyenne des elements du tableau sont : ', m:0:2);

End.  //////////////////// Fin du prgramme principal ////////////////////