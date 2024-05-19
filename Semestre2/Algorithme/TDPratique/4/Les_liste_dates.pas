Program les_dates;
Type date = record
	j : Integer; // jour
	m : Integer; // mois
	a : Integer; // annee
	d : ^date; // pointeur de date
end;
type_liste = ^date;
var i, n : Integer;
	p : ^date;
	liste : type_liste;
	avant_hier, hier, aujourdhui, demain, apres_demain : ^date;
procedure ajoue_date(liste : type_liste; n : Integer);
var jour, mois, annee : Integer;
	p, prec : type_liste;
begin
	new(p); new(prec);
	p := liste; prec := p;

	 jour := liste^.j; mois := liste^.m; annee := liste^.a;

	if (jour = 31) then
	begin
		jour := 1;

		if (mois = 12) then
		begin 
			mois := 1;
			annee := annee + 1;
		end;
	end;

	for i := 1 to n do
	begin
		new(liste);
		liste^.j := jour;
		liste^.m := mois;
		liste^.a := annee;

		prec^.d := liste;
		prec := liste;

		if (jour < 31) then
			jour := jour + 1
		else if (mois < 12) then
		begin
			jour := 1;
			mois := mois + 1;
		end
		else
		begin
			jour := 1;
			mois := 1;
			annee := annee + 1;
		end;

		if ((mois = 2) and (jour > 28)) then
		begin
			jour := 1;
			mois := 3;
		end;
	end;
	prec^.d := nil;

	liste := p;
	//for i := 1 to n do
	while(liste <> nil) do
	begin
		writeln('*  ',liste^.j,'/',liste^.m,'/',liste^.a);
		liste := liste^.d;
	end;
end;
///////////////////////////////////////////////////////////////////////////
Begin // Debut du prgramme principal
	new(avant_hier); 
	new(hier); 
	new(aujourdhui); 
	new(demain); 
	new(apres_demain);

	avant_hier^.d := hier;
	hier^.d := aujourdhui;
	aujourdhui^.d := demain;
	demain^.d := apres_demain;
	apres_demain^.d := nil;


	i := 1; p := avant_hier;
	while (p <> nil) do
	//for i := 1 to 4 do 
	begin
		p^.j := i;
		p^.m := 1;
		p^.a := 2021;

		p := p^.d;
		i := i + 1;
	end;

	writeln;
	writeln('avant_hier    hier    aujourdhui    demain    apres_demain');
	writeln;
	p := avant_hier;
	while (p <> nil) do
	//for i := 1 to 4 do 
	begin
		write(p^.j,'/',p^.m,'/',p^.a,'    ');
		p := p^.d;
	end;
	//write(apres_demain^.j,'/',apres_demain^.m,'/',apres_demain^.a,'    ');

////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
 	writeln; writeln;
 	writeln('Donner une date pour connaitre les jours suivants');
 	new(liste);

 	repeat
 		write('Donner le jour : ');
 		readln(liste^.j);
 	until ((liste^.j > 0) and (liste^.j <= 31));

 	repeat
 		write('Donner le mois : ');
 		readln(liste^.m);
 	until ((liste^.m >= 1) and (liste^.m <= 12));

 	repeat
 		write('Donner l''annee : ');
 		readln(liste^.a);
 	until (liste^.a > 0);

 	writeln;
 	repeat
 		write('Donner le nombre de jour que tu veut ajouter : ');
 		readln(n);
 	until (n > 0);

 	ajoue_date(liste, n);
End.  // Fin du prgramme principal