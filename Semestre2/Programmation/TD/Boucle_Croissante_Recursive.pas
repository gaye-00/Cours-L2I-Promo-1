Program boucle_croissante;
var n : Integer;

//-------------------------------------------------------------------------//
procedure boucle(n : Integer);
begin
	if (n >= 1) then
	begin
		boucle(n-1);
		write(n,'  ');
	end;
end;
//-------------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////

	write('Donner un entier positive : ');
	readln(n);
	boucle(n);

End.  //////////////////// Fin du prgramme principal ////////////////////