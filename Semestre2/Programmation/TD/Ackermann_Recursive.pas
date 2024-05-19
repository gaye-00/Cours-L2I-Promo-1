Program modele;
var nb1, nb2 : Integer;

//-------------------------------------------------------------------------//
function A(m,n : Integer): Integer;
begin
	if (m = 0) then
	   A := n + 1
	else if ((m > 0) and (n = 0)) then 
		A := A(m-1,1)
	else if ((m > 0) and (n > 0)) then 
		A := A(m-1,A(m,n-1))
end;
//-------------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////

	write('Donner un nombre : ');
	readln(nb1);

	writeln;
	write('Donner un nombre : ');
	readln(nb2);

	writeln;
	writeln(A(nb1,nb2));

End.  //////////////////// Fin du prgramme principal ////////////////////