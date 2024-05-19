Program les_articles;
const max_c = 4;
Type type_date = record
	mn : 0..59;
	heure : 0..23;
	jour : 1..31;
	mois : 1..12;
	annee : Integer;
 end;
 	article = record
 	nb_achat, prix : Integer;
 	note : real;
 	nom : String[100];
 	dt : type_date;
 end;
	
tab_phone = array[1..max_c] of article;
tab_chs = array[1..max_c] of article;

var phone : tab_phone;
	chs : tab_chs;
	i, choix : Integer;
procedure tri_pdemander(var X : tab_phone);
var i, j, imax : Integer;
	 tmp : article; 
begin
	for i := max_c downto 1 do
	begin
		imax := 1;
		for j := 1 to i do
			if (X[j].nb_achat < X[imax].nb_achat) then
				imax := j;
		tmp := X[i];
		X[i] := X[imax];
		X[imax] := tmp;
	end;

	writeln('*****************************************************************');
	for i := 1 to max_c do
		writeln('   -',X[i].nom,' ',X[i].prix,'f');

end;

procedure tri_d_arrivage(var X : tab_phone);
var i, j : Integer;
	tmp : article;
begin
	for i := 1 to max_c - 1 do
		for j := 1+i to max_c do
			if (X[j].dt.annee > X[i].dt.annee) then
			begin
				tmp := X[i];
				X[i] := X[j];
				X[j] := tmp;
			end;
	for i := 1 to max_c - 1 do
		for j := 1+i to max_c do
			if (X[j].dt.annee = X[i].dt.annee) then 
				if (X[j].dt.mois > X[i].dt.mois) then
				begin
				 	tmp := X[i];
				 	X[i] := X[j];
				 	X[j] := tmp;
				end;
	for i := 1 to max_c - 1 do
		for j := 1+i to max_c do
			if ((X[j].dt.mois = X[i].dt.mois) and (X[j].dt.annee = X[i].dt.annee)) then
				if (X[j].dt.jour > X[i].dt.jour) then
				begin
				 	tmp := X[i];
				 	X[i] := X[j];
				 	X[j] := tmp;
				end;

	for i := 1 to max_c - 1 do
		for j := 1+i to max_c do
			if ((X[j].dt.mois = X[i].dt.mois) and (X[j].dt.annee = X[i].dt.annee) and (X[j].dt.jour = X[i].dt.jour) ) then
				if (X[j].dt.heure > X[i].dt.heure) then
				begin
				 	tmp := X[i];
				 	X[i] := X[j];
				 	X[j] := tmp;
				end;			

	for i := 1 to max_c - 1 do
		for j := 1+i to max_c do
			if ((X[j].dt.mois = X[i].dt.mois) and (X[j].dt.annee = X[i].dt.annee) and (X[j].dt.jour = X[i].dt.jour) and (X[j].dt.heure = X[i].dt.heure)) then
				if (X[j].dt.mn > X[i].dt.mn) then
				begin
				 	tmp := X[i];
				 	X[i] := X[j];
				 	X[j] := tmp;
				end;

	writeln('*****************************************************************');
	for i := 1 to max_c do
		writeln('   -',X[i].nom,' ',X[i].prix,'f  ',X[i].dt.jour,'/',X[i].dt.mois,'/',X[i].dt.annee,' a ',X[i].dt.heure,'h ',X[i].dt.mn,'mn');

end;
procedure tri_p_croissant(var X : tab_phone);
var i, j : Integer;
	v : article;
begin
	for i := 2 to max_c do
	begin
		v := X[i];
		j := i - 1;
		while (j >= 1) and (X[j].prix > v.prix) do
		begin
			X[j+1] := X[j];
			j := j - 1;
		end;
		X[j+1] := v;
	end;
end;
procedure mieux_note(var X : tab_phone);
var i, j, imin : Integer;
	 tmp : article; 
begin
	for i := max_c downto 1 do
	begin
		imin := 1;
		for j := 1 to i do
			if (X[j].note < X[imin].note) then
				imin := j;
		tmp := X[i];
		X[i] := X[imin];
		X[imin] := tmp;
	end;

	writeln('*****************************************************************');
	for i := 1 to max_c do
		writeln('   -',X[i].nom,' ',X[i].prix,'f Note : ',X[i].note:0:1);

end;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Begin // Debut du programme principal

	phone[1].nom := 'SAMSUNG Galaxy'; phone[1].prix := 200000; phone[1].nb_achat := 12; phone[1].note := 4.5;
	phone[2].nom := 'Tecno Spark'; phone[2].prix := 80000; phone[2].nb_achat := 21; phone[2].note := 3.8;
	phone[3].nom := 'iphone 13'; phone[3].prix := 800000; phone[3].nb_achat := 8; phone[3].note := 4.8;
	phone[4].nom := 'Huawei'; phone[4].prix := 150000; phone[4].nb_achat := 7; phone[4].note := 4.5;

	chs[1].nom := 'Adidas'; chs[1].prix := 25000; chs[1].nb_achat := 4; chs[1].note := 4.8;
	chs[2].nom := 'Nike'; chs[2].prix := 18000; chs[2].nb_achat := 12; chs[2].note := 4.6;
	chs[3].nom := 'Basket'; chs[3].prix := 12000; chs[3].nb_achat := 8; chs[3].note := 4;
	chs[4].nom := 'Jo'; chs[4].prix := 35000; chs[4].nb_achat := 5; chs[4].note := 5;

	chs[1].dt.mn := 12; chs[1].dt.heure := 23; chs[1].dt.jour := 21; chs[1].dt.mois := 8; chs[1].dt.annee := 2021;
	chs[2].dt.mn := 57; chs[2].dt.heure := 1; chs[2].dt.jour := 14; chs[2].dt.mois := 11; chs[2].dt.annee := 2021;
	chs[3].dt.mn := 3; chs[3].dt.heure := 21; chs[3].dt.jour := 7; chs[3].dt.mois := 12; chs[3].dt.annee := 2021;
	chs[4].dt.mn := 59; chs[4].dt.heure := 8; chs[4].dt.jour := 6; chs[4].dt.mois := 8; chs[4].dt.annee := 2020;

	phone[1].dt.mn := 3; phone[1].dt.heure := 14; phone[1].dt.jour := 5; phone[1].dt.mois := 4; phone[1].dt.annee := 2021;
	phone[2].dt.mn := 14; phone[2].dt.heure := 15; phone[2].dt.jour := 15; phone[2].dt.mois := 2; phone[2].dt.annee := 2021;
	phone[3].dt.mn := 57; phone[3].dt.heure := 15; phone[3].dt.jour := 15; phone[3].dt.mois := 2; phone[3].dt.annee := 2021;
	phone[4].dt.mn := 3; phone[4].dt.heure := 3; phone[4].dt.jour := 30; phone[4].dt.mois := 4; phone[4].dt.annee := 2021;

	writeln;
	writeln('Tri pour les plus demander des telephones');
	tri_pdemander(phone);

	writeln;
	writeln('Tri pour les plus demander des chaussures');
	tri_pdemander(chs);

	writeln;
	writeln('Tri pour les dernieres arrivage de telephones');
	tri_d_arrivage(phone);

	writeln;
	writeln('Tri pour les dernieres arrivage de chaussures');
	tri_d_arrivage(chs);

	writeln;
	tri_p_croissant(phone);
	tri_p_croissant(chs);
	writeln('Tri pour les prix croissant de telephones');
	writeln('*****************************************************************');
	for i := 1 to max_c do
		writeln('   -',phone[i].nom,' ',phone[i].prix,'f');

	writeln;
	writeln('Tri pour les prix croissant de chaussures');
	writeln('*****************************************************************');
	for i := 1 to max_c do
		writeln('   -',chs[i].nom,' ',chs[i].prix,'f');

	writeln;
	writeln('*****************************************************************');
	tri_p_croissant(phone);
	tri_p_croissant(chs);
	writeln('Tri pour les prix decroissant de telephones');
	writeln('*****************************************************************');
	for i := max_c downto 1 do
		writeln('   -',phone[i].nom,' ',phone[i].prix,'f');

	writeln;
	writeln('Tri pour les prix decroissant de chaussures');
	writeln('*****************************************************************');
	for i := max_c downto 1 do
		writeln('   -',chs[i].nom,' ',chs[i].prix,'f');

	writeln;
	writeln('Tri pour les mieux note des  telephones');
	mieux_note(phone);

	writeln;
	writeln('Tri pour les mieux note des  chaussures');
	mieux_note(chs);

	writeln;
	writeln('Tri generique pour tout les criteres');
	writeln('   1- Tri par defaut');
	writeln('   2- Tri pour les plus demander');
	writeln('   3- Tri pour les derniers arrivages');
	writeln('   4- Tri pour les prix croissants');
	writeln('   5- Tri pour les prix decroissants');
	writeln('   6- Tri pour les mieux note');
	writeln('   0- Pour quitter');

	repeat
		repeat
			writeln;
			write('Donner ton choix : ');
			readln(choix);
		until (choix >= 0) and (choix <= 6);

		if ((choix = 1) or (choix = 2)) then
		begin
			tri_pdemander(phone);
			tri_pdemander(chs);
		end

		else if (choix = 3) then
		begin
		 	tri_d_arrivage(phone);
			tri_d_arrivage(chs);
		end

		else if ((choix = 4) or (choix = 5)) then
		begin
			tri_p_croissant(phone);
			tri_p_croissant(chs);
			if (choix = 4) then
			begin
				//affichage croissant
			end
			else
			begin
				//affichage decroissant
			end;
		end

		else if (choix = 6) then
		begin
			mieux_note(phone);
			mieux_note(chs);
		end;

	until (choix = 0);

End. //Fin du programme principal