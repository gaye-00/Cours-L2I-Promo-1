Program tableux;
uses wincrt;
Var T : Array[1..10] of Integer;
 		i , max: Integer;

BEGIN
	i := 0; max := 0;
	for i:=1 to 10 Do
	Begin
		write ('Donner T[',i,'] : ');
		read(T[i]);

			if T[i] > max Then
			Begin
					max := T[i];
			end;
		
	end;

	writeln('Le maximum est : ', max);
	
END.