program test_fichiers;
const max_c = 1000;
Type type_tab = array[1..max_c] of String;
	 Fichier = file of String;
	 ensemble = char;
////////////////////////////////////////////////////////////////
var F : Fichier; 
	nom : String;
	taille, i : Integer;
	ens : set of ensemble;
////////////////////////////////////////////////////////////////
procedure affiche(var F : Fichier);
var nom : String;
	i, sup : Integer;
begin
	writeln;
	i := 1;
	writeln('Les noms entrer dans le fichier sont');
	assign(F, 'les_noms.dat');
	reset(F);
		while (not eof(F)) do
		begin
			read(F, nom);
			writeln(' ',i,'  -',nom);
			i := i + 1;
		end;
	close(F);
end;
////////////////////////////////////////////////////////////////
Begin // Debut du prgramme principal

	repeat
		write('Donner le nombre de personne : ');
		readln(taille);
	until ((taille > 0) and (taille <= max_c));

	writeln;
	assign(F, 'les_noms.dat');
	rewrite(F);
		for i := 1 to taille do
		begin
			write('Donner la personne numero [',i,'] : ');
			readln(nom);
			write(F, nom);
		end;
	close(F);

	affiche(F);

	writeln;
	ensemble := (0,1);
	write('Taper 0 si veut supprimer 1 sinon');

End.  // Fin du prgramme principal