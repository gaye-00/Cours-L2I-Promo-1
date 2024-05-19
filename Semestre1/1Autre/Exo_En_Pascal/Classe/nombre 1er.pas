Program nombre_premiere;
uses wincrt;
Var i, n : integer;
    b : Boolean;

BEGIN

		write('Donner un nombre entier positif : ');
		read(n);

		b := true;
		for i := 2 to n div 2 do
			if (n mod i) = 0 then
			 b := false;
		if b = true then
		 write(n,' est un nombre premier')
		 else
		  write(n,' n''est pas un nombre premier');

		  readkey;
END.