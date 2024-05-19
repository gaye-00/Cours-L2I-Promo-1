Program tableux;
uses wincrt;
Type tab = Array[1..2, 1..2] of String[100];
Var T : tab;
    i, j : integer;
		car : String;

BEGIN

		write('Entrer votrer prenom : ');
		readln(T[1][1]);
		
		write('Entrer votrer nom : ');
		readln(T[1][2]);

		write('Entrer votrer 2eme prenom : ');
		readln(T[2][1]);

		write('Entrer votrer 2eme nom : ');
		readln(T[2][2]);

		writeln;
		writeln('Premier nom : ',T[1][1],' ',T[1][2]);
		writeln('Deuxieme nom : ',T[2][1],' ',T[2][2]);
		writeln;

		write('Entrer la lettre que tu veut rechercher dans les noms entrés : ');
		read(car);

		i := 0; j := 0;
		//if car = 'b' Then
		for i := 1 to 100 Do
		Begin
			for j := 1 to 100 Do
				if T[i][j] = car Then
					writeln('J''ai trouver ',car,' à la position ',T[i][j]);
					//T[i][j] := car;
		end;
		//writeln('J''ai trouver ',car,' à la position ',T[i][j]);
		
   ReadKey;
END.