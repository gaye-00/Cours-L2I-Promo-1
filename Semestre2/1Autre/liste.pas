Program les_dates;
Uses WinCrt;
Type date = record
	j : Integer; // jour
	m : Integer; // mois
	a : Integer; // annee
	suiv : ^date; // pointeur de date
end;
//liste = ^date;
var i : Integer;
	p : ^date;
	a_hier, hier, auj, demain, a_demain : ^date;
///////////////////////////////////////////////////////////////////////////
Begin // Debut du prgramme principal
	a_hier := hier;
	hier := auj;
	auj := demain;
	demain := a_demain;
	a_demain := nil;

	write('test 000');
	i := 1; p := a_hier;
	while (p <> nil) do
	begin
		p^.j := i;
		p^.m := 1;
		p^.a := 21;
		p := p^.suiv;
		i := i + 1;
		write('test 111');
	end;

	i := 1; p := a_hier;
	while (p <> nil) do
	begin
		writeln('Avant hier : ',p^.j,'/',p^.m,'/',p^.a);
		p := p^.suiv;
		write('test 222');
	end;

End.  // Fin du prgramme principal