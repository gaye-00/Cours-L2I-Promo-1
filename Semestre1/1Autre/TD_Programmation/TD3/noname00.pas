Program exercice_td2_3_11;
uses wincrt;
Var
	 T : array [1..50] of real;
	 som, moy, min, max : real;
	 i, j : Integer;
Procedure notemoin1;
Begin
    writeln;
		writeln('La somme des notes entree est : ', som+1:0:2);
		writeln('La moyenne des notes est : ', som/(i-1):0:2);
		writeln;
		writeln('La note minimale est : ',min:0:0);
		writeln('La note maximale est : ',max:0:0);
		writeln('Le nombre de note inferieur à 10 est : ',j);
end;

Begin
		 j := 0; i := 0; min := 20; max := 0; som := 0;
		for i := 1 to 50 do
		Begin
		write(i,' :Entrer la note de l''etudiant : ');
		read(T[i]);

		 while ((T[i] < 0) or (T[i] > 20)) and (T[i] <> -1) do
		 Begin
		     writeln;
				 writeln('La note de l''etudiant numero ',i,' entrer est non valide ');
				 write(i,' :Entrer encore la note de l''etudiant svp : ');
				 read(T[i]);
		 end;
		 
		  som := som + T[i];
			if (T[i] >= 0) and (T[i] < 10) then
			 j := j + 1;

				if (T[i] <= min) and (T[i] <> -1) then
				 min := T[i];

					if (T[i] >= max) and (T[i] <= 20) then
					 max := T[i];

						if (T[i] = -1) then
						Begin
								notemoin1;
								exit;
						end;

		end;

    moy := som / 50;
    writeln;
		writeln('La somme des notes entree est : ', som:0:2);
		writeln('La moyenne des notes est : ', moy:0:2);
		writeln;
		writeln('La note minimale est : ',min:0:0);
		writeln('La note maximale est : ',max:0:0);
		writeln('Le nombre de note inferieur à 10 est : ',j);
		
 Readkey
end.