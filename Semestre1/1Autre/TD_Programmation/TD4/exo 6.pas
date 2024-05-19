Program exo_6;
uses wincrt;
Const max_c = 10; max_l = 2;
Type T = array[1..max_l,1..max_c] of real;
		 tab = array[1..max_c*2] of real ;
Var tab1 : T;
		tab2 : tab;
		som_tab : real;
		i, j : integer;
		
BEGIN

		 som_tab := 0;
		 for i := 1 to max_l Do
		 Begin
		 		for j := 1 to max_c Do
				Begin
					  write('Entrer la valeur tab[',i,' ',j,'] : ');
				 	  read(tab1[i,j]);
				 	  som_tab := som_tab + tab1[i,j];
				end;
		 end;

		 		for j := 1 to max_c Do
		 		Begin
						tab2[j] := tab1[1,j]
		  	end;

		 			for j := 1 to max_c Do
					Begin
							tab2[j+10] := tab1[2,j]
				  end;

			writeln('======================================================');
			writeln('La somme des elements des deux tableaux sont : ',som_tab:0:2);
			writeln('======================================================');
			for j := 1 to (max_c*2) Do
			Begin
					write(tab2[j]:10:2);
			end;


	 Readkey;
END.