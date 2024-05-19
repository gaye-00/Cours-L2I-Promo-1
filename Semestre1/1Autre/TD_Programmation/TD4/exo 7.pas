Program exo_7;
uses wincrt;
Var tab : array[1..10] of Integer;
		ele_1, i, compteur_1, compteur_2 : Integer;

//Consecutif <> de trie. Ici c'est 1.2.3.4.5.6.7 par exemple
//Programme à modifier
BEGIN

		for i := 1 to 10 Do
		Begin
				write(i,' : Entrer le nombre : ');
				read(tab[i]);
		end;

		ele_1 := tab[1]; compteur_1 := 1; compteur_2 := 1;
		for i := 2 to 10 Do
		Begin
				if ele_1 <= tab[i] Then
				Begin
					ele_1 := tab[i];
					compteur_1 := compteur_1 + 1;
				end

					else if ele_1 >= tab[i] Then
					Begin
						ele_1 := tab[i];
						compteur_2 := compteur_2 + 1;
					end;
		end;

		if (compteur_1 = 10) or (compteur_2 = 10) Then
		 writeln('Les elements du tableau sont consecutifs')

		 	Else
				writeln('Les elements du tableau ne sont pas consecutifs');


	 Readkey;
END.