Program modele;
const c = 5;
var T : ^Integer;
	i : Integer;

//-------------------------------------------------------------------------//

Begin //////////////////// Debut du prgramme principal ////////////////////

	new(T, 5);
	for i := 1 to 5 do
	begin
		write('Donner l''element ',i,' : ');
		readln(T^[i]);
	end;

	writeln;
	for i := 1 to 5 do
		write('	',T^[i]);

End.  //////////////////// Fin du prgramme principal ////////////////////