Program suite2_iterative;
var nombre : Integer;
///////////////////////////////////////////////////////////////////////////
function suite2(n : Integer): real;
var Un, U0, U1 : real; 
	i : Integer;
begin
	U0 := 2; U1 := 3;
	if (n = 0) then
		suite2 := U0
	else if (n = 1) then 
		suite2 := U1
	else 
	begin
		for i := 2 to n do
		begin
			Un := (2/3)*U1 - (1/4)*U0;
			U0 := U1;
			U1 := Un;
		end;
	suite2 := Un;
	end;
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