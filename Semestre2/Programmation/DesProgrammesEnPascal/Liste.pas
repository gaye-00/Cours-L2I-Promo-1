PROGRAM liste;
TYPE
  tpoint = ^tval;
  tval = record
           valeur : integer;
           suivant : tpoint
         end;
VAR
  prem, precedent, point : tpoint;
  i, n : integer;
BEGIN
  write('Combien d''elements comporte votre liste : ');
  readln(n);

  new(prem);  // le 1er est particulier : si on le perd, on perd la liste
  write('1ere valeur :  ');
  readln(prem^.valeur);    // lecture de l'enregistrement VALEUR de la variable d'adresse (pointée par) PREM 

  precedent := prem;
  for i := 2 to n do
  begin
    new(point); // création d'une nouvelle variable 

    write(i,'ieme valeur  : ');
    readln(point^.valeur);

    precedent^.suivant := point;  // mise à jour du chaînage 
    precedent := point  // se préparer pour la prochaine boucle 
  end;

  precedent^.suivant := NIL;  // NIL signifie "rien" car 0 est un entier, non une adresse
  point := prem; // heureusement, on se souvient du premier

  for i := 1 to n do 
  begin
    writeln(point^.valeur);
    point := point^.suivant  // pour la prochaine boucle
  end
  
END.