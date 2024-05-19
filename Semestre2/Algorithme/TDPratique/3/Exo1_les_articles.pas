program les_articles;
uses wincrt;
const max_l = 5; max_c = 1000;
Type article_type = record
	nom : String;
	prix_uti : real;
end,
article : array[1..max_l,1..max_c] of article;
var tab : array[1..5] of Integer;
	p, tmp : article;
	i : Integer;

begin
	writeln('Choisie par odre de priorité les articles');
	writeln('1° Les plus demander');
	writeln('2° Derneir arrivage');
	writeln('3° Prix croissantes');
	writeln('4° Prix decroissante');
	writeln('5° Les mieux notés');
	writeln;

	for i := 1 to max_l do
	begin
		write(i,'Entrer ton choix par odre : ');
		read(tab[i]);
	end;

	for i := 1 to (max_c - 1) do
		for j := (1 + i) to max_c do 
		begin
			if (p[1][i].prix_uti > p[1][j].prix_uti) then
			begin
				tmp := 
			end;
		end;
end;