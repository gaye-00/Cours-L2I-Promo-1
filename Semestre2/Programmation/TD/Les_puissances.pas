Program puissance_recursives;
var nombre, p : Integer;
   	puis : real;
//-------------------------------------------------------------------------
function puissance(n : real; p : Integer): real;
begin
	if (p = 0) then
	   puissance := 1
	else if (p > 0) then
       puissance := n*puissance(n,p-1)
    else
       puissance := 1/puissance(n,-p)
end;
///////////////////////////////////////////////////////////////////////////
Begin // Debut du prgramme principal
    write('Donner un nombre : ');
    readln(nombre);

    write('Donner da puissance : ');
    readln(p);

    puis := puissance(nombre, p);
    writeln(nombre,' puissance ',p,' est : ',puis:0:5);

End.  // Fin du prgramme principal