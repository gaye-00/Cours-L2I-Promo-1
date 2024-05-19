Program boucle_croissante;
var n : Integer;

//-------------------------------------------------------------------------//
procedure boucle(n : Integer);
begin
	if (n <= 0) then
	begin
		boucle(n+1);
		write(n,'  ');
	end;
end;
//-------------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////

	repeat
		write('Donner un entier negative : ');
		readln(n);
	until (n < 0);
	boucle(n);

End.  //////////////////// Fin du prgramme principal ////////////////////