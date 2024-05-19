program GestionCandidat;
Type candidat=Record
	num: integer;
	prenoms: string[30];
        nom : string[20];
        sexe: (homme, femme);
	note: real;
     end;
  fcand = file of candidat;

procedure saisir(var f : fcand);
var cand: candidat;
    i, nb:integer;
begin
        write('Donner le nombre de candidats : ');
	readln(nb);
	{assign(f, 'C:\Users\HP\Documents\candidats.dat');}
	rewrite(f); (* ouverture en mode écriture  *)
	for i:=1 to nb do
	begin
		writeln('Ajout d''un nouveau candidat ');
                write('    Identifiant du candidat : ');
		readln(cand.num);
		write('    Prénoms du candidat : ');
		readln(cand.prenoms);
                write('    Nom du candidat : ');
		readln(cand.nom);
                write('    sexe du candidat : ');
		readln(cand.sexe);
		write('    Note du candidat : ');
		readln(cand.note);
		write(f, cand);
	end;
	close(f);
end;
procedure afficher(var f:fcand);
var cand:candidat;
    i:integer;
begin
       {assign(f, 'C:\Users\HP\Documents\candidats.dat'); }
       reset(f); (* ouverture en mode lecture  *)
       i:=0;
       writeln('Liste des candidats inscrits à la formation :');
       while not eof(f) do
       begin
           read(f, cand);
           writeln('     ',i,'- ',cand.num,' ',cand.prenoms,' ',cand.nom,' ',cand.sexe,' ',cand.note:0:2);
           i:=i+1;
       end;
       close(f);
end;
procedure modifier(var f:fcand);
var i, id: integer;
    trouve: boolean;
    cand: candidat;
begin
      write('Donner l''identifiant du candidat à modifier : ');
      readln(id);
      reset(f);
      trouve:=false;
      i:=0;
      while not eof(f) and not trouve do
      begin
          read(f, cand);
          i:=i+1;
          if cand.num=id then
             trouve:=true;
      end;
      if trouve then
      begin
          write('    Identifiant du candidat : ');
          readln(cand.num);
          write('    Prénoms du candidat : ');
          readln(cand.prenoms);
          write('    Nom du candidat : ');
          readln(cand.nom);
          write('    sexe du candidat : ');
          readln(cand.sexe);
          write('    Note du candidat : ');
          readln(cand.note);
          seek(f, i-1);
          write(f, cand);
      end
      else
            writeln('Pas de candidat ayant cet identifiant ');
      close(f);
end;
procedure modifierPos(var f:fcand);
var pos: integer;
    cand: candidat;
begin
    write('Donner la position du candidat à modifier dans le fichier : ');
    readln(pos);
    reset(f);
    seek(f, pos);
    write('    Identifiant du candidat : ');
    readln(cand.num);
    write('    Prénoms du candidat : ');
    readln(cand.prenoms);
    write('    Nom du candidat : ');
    readln(cand.nom);
    write('    sexe du candidat : ');
    readln(cand.sexe);
    write('    Note du candidat : ');
    readln(cand.note);
    write(f, cand);
    close(f);
end;
procedure ajouterFin(var f:fcand);
var
    X, cand: candidat;
begin
    writeln('Ajout d''un nouveau candidat à la fin du fichier ');
    reset(f);
    write('    Identifiant du candidat : ');
    readln(cand.num);
    write('    Prénoms du candidat : ');
    readln(cand.prenoms);
    write('    Nom du candidat : ');
    readln(cand.nom);
    write('    sexe du candidat : ');
    readln(cand.sexe);
    write('    Note du candidat : ');
    while not eof(f) do
          read(f, X);
    write(f, cand);
    close(f);
end;

var f: fcand;
    cand: candidat;
    i, nb: integer;
begin
	assign(f, 'candrenats.dat');
        {assign(f, 'C:\Users\HP\Documents\candrenats.dat');}
        writeln('Création du fichier et inscription des premiers candidats à la formation ');
	saisir(f);
        writeln('Affichage des candidats inscrits à la formation ');
        afficher(f); }
        writeln('Modification d''un candidat via sa position dans le fichier ');
        modifierPos(f);
        writeln('Affichage des candidats inscrits à la formation après modification ');}
        afficher(f);
        writeln('Modification d''un candidat via son identifiant ');
        modifier(f);
        writeln('Affichage des candidats inscrits à la formation après modification ');
        afficher(f);
        writeln('Ajour d''un candidat à la fin du fichier ');
        ajouterFin(f);
        writeln('Affichage des candidats inscrits à la formation après un ajout à la fin ');
        afficher(f);
        readln;
end.
