Program la_combinaison;
Uses WinCrt;
Var card, entier, combinaison : Integer;
Function fact(n1 : Integer) : Integer;
Var i, facto : Integer;
Begin
		facto := 1;
		for i := 2 to n1 Do
			facto := facto * i;

			fact := facto;
end;
Function comb(n2, p : Integer) : Integer;
Var fact_n, fact_p, n_p : Integer;
Begin
		fact_n := fact(n2);
		fact_p := fact(p);
		n_p := fact(n2 - p);
		comb := fact_n div (fact_p * n_p)
end;

BEGIN

		Repeat
		write('Entrer la cardinal de la combinaison n : ');
		read(card);
		until (card > 0);

		Repeat
		write('Entrer l''entier de la combinaison p : ');
		read(entier);
		Until (card >= entier);

		combinaison := comb(card, entier);

		writeln('================================================================');
		writeln('La combinaison de cardinal ',card,' et d''entier ',entier,' est n!/p!(n-p)! = ',combinaison);
		writeln('================================================================');


		ReadKey;
END.