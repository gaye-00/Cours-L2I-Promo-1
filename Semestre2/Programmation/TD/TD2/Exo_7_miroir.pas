Program moroir_correction;
var mot : String;

//----------------------------------------------------------------------//
function miroir(m : String): String;
var n : Integer;
begin
	n := length(m);
	if ((n = 1) or (n = 0)) then
		miroir := m
	else
		miroir := m[n] + miroir(copy(m, 1, n-1));
end;
//----------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////

	write('Entrer un mot : ');
	readln(mot);

	writeln;
	writeln('Le miroir de ',mot,' est ',miroir(mot));

End.  //////////////////// Fin du prgramme principal ////////////////////