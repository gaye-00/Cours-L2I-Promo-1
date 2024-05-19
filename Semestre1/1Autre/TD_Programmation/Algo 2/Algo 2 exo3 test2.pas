Program exo3_test2;
uses wincrt;
Var nb1, nb2, nb_fois, i, j, porteur : Integer;
{Function somme_succ(nb_f : Integer; ) : Integer;
Var j, return : Integer;
Begin
			j := 0; return := 0;
		 for j := 1 to nb_f Do
		 Begin
				 return := return + nb_f;
		 end;
		somme_succ := return;
end;}

BEGIN

		Repeat
				 write('Entrer le nombre de nombre que tu veut calculer : ');
				 read(nb_fois);
		Until (nb_fois >= 2);

		i := 1; porteur := 0;
		write('Entrer le nombre numero ',i,' : ');
		read(nb1);
		
		for i := 2 to nb_fois Do
		Begin
				write('Entrer le nombre numero ',i,' : ');
				read(nb2);

				for j := 1 to nb2 Do
					porteur := porteur + nb1;

				j := 0; nb1 := porteur; porteur := 0;
		end;
		writeln('Le  produit des nombres entres est : ', nb1);

END.