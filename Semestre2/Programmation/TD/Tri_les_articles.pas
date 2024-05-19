Program les_articles;
const max_c = 4;
Type type_date = record
	mn : 0..59;
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
	//type_article = record
	//phone, chaussure, eau, pc : produit;
 //end;
tab_phone = array[1..max_c] of article;
tab_chs = array[1..max_c] of article;
//tab_eau = = array[1..max_c] of article;
//tab_pc : = array[1..max_c] of article;

var phone : tab_phone;
	chs : tab_chs;
	i : Integer;
	//imax_f : Integer;
	//eau : tab_eau;
	//pc : tab_pc;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
{unction tri_p_demander(X1 : tab_phone) : Integer; // Cherche max
var imax, i : Integer;
begin
	imax := 1;
	for i := 1 to 4 do
		if (X1[i].nb_achat > X1[imax].nb_achat) then
 			imax := i;
 	tri_p_demander := imax;
end;}
{function controle(X : article): Boolean;
var ok : Boolean;
	i : Integer;
begin
	ok := true; i := -1;
	while ((ok) and (i = -1)) do 
	begin
		i := 1;
		{while ((ok) and (i <= max_c)) do
		begin
			if ((X[i].dt.annee < 2000) or (X[i].dt.annee > 2021)) then
				ok := false
			else
				i := i + 1;
		end;

		i := 1;
		while ((ok) and (i <= max_c)) do
		begin
			if ((X[i].dt.mois < 1) or (X[i].dt.mois > 12)) then
				ok := false
			else
				i := i + 1;
		end;

		i := 1;
		while ((ok) and (i <= max_c) do
		begin
			if ((X[i].dt.jour < 1) or (X[i].dt.jour > 31)) then
				ok := false

				else if ((X[i].dt.mois = 2) and (X[i].dt.jour > 28)) then
					ok := false
			else
				i := i + 1;
		end;

		i := 1;
		while ((ok) and (i <= max_c) do
		begin
			if ((X[i].dt.mn < 0) or (X[i].dt.mn > 59)) then
				ok := false
			else
				i := i + 1;
		end;
	end;

	controle := ok;
end;}
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
end;
procedure tri_d_arrivage(var X : article);
var i, j : Integer;
	tmp : article;
begin
	//if (controle(X) = true) then
	//begin 
		for i := 1 to max_c - 1 do
			for j := 1+i to max_c do
				if (X[j].annee > X[i].annee) then
				begin
				 	tmp := X[i];
				 	X[i] := X[j];
				 	X[j] := tmp;
				end;
		for i := 1 to max_c - 1 do
			for j := 1+i to max_c do
				if (X[j].mois > X[i].mois) then
				begin
				 	tmp := X[i];
				 	X[i] := X[j];
				 	X[j] := tmp;
				end;
		for i := 1 to max_c - 1 do
			for j := 1+i to max_c do
				if (X[j].jour > X[i].jour) then
				begin
				 	tmp := X[i];
				 	X[i] := X[j];
				 	X[j] := tmp;
				end;
		for i := 1 to max_c - 1 do
			for j := 1+i to max_c do
				if (X[j].mn > X[i].mn) then
				begin
				 	tmp := X[i];
				 	X[i] := X[j];
				 	X[j] := tmp;
				end;
	//end

	//else
		//writeln('Date Non valide!');
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

		{imax_f := tri_p_demander(phone);
		writeln('Tri pour les plus demander');
		writeln('   -',phone[imax_f].nom,' Prix : ',phone[imax_f].prix,'f');
		imax_f := tri_p_demander(chs);
		writeln('   -',chs[imax_f].nom,' Prix : ',chs[imax_f].prix,'f');}

		tri_pdemander(phone);
		tri_pdemander(chs);
		writeln('Tri pour les plus demander des telephones');
		for i := 1 to max_c do
			writeln('   -',phone[i].nom,' ',phone[i].prix,'f');

		writeln;
		writeln('Tri pour les plus demander des chaussures');
		for i := 1 to max_c do
			writeln('   -',chs[i].nom,' ',chs[i].prix,'f');

		chs[1].dt.mn := 12; chs[1].dt.jour := 21; chs[1].dt.mois := 8; chs[1].dt.annee := 2021;
		chs[2].dt.mn := 57; chs[2].dt.jour := 14; chs[2].dt.mois := 11; chs[2].dt.annee := 2021;
		chs[3].dt.mn := 3; chs[3].dt.jour := 7; chs[3].dt.mois := 12; chs[3].dt.annee := 2021;
		chs[4].dt.mn := 1; chs[4].dt.jour := 6; chs[4].dt.mois := 8; chs[4].dt.annee := 2020;

		phone[1].dt.mn := 3; phone[1].dt.jour := 5; phone[1].dt.mois := 4; phone[1].dt.annee := 2021;
		phone[2].dt.mn := 14; phone[2].dt.jour := 15; phone[2].dt.mois := 2; phone[2].dt.annee := 2021;
		phone[3].dt.mn := 57; phone[3].dt.jour := 21; phone[3].dt.mois := 3; phone[3].dt.annee := 2021;
		phone[4].dt.mn := 3; phone[4].dt.jour := 30; phone[4].dt.mois := 4; phone[4].dt.annee := 2021;

		writeln;
		tri_d_arrivage(phone);
		tri_d_arrivage(chs);
		writeln('Tri pour les plus demander des telephones');
		for i := 1 to max_c do
			writeln('   -',phone[i].nom,' ',phone[i].prix,'f');

		writeln;
		writeln('Tri pour les plus demander des chaussures');
		for i := 1 to max_c do
			writeln('   -',chs[i].nom,' ',chs[i].prix,'f');


End. //Fin du programme principa