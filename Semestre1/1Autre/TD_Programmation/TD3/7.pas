Program exercice_td2_3_7;
Uses Wincrt;
Var
  nombre, fact : Real;
  i: Integer;
Begin
  i := 1;
  fact := 1;
  Writeln('Calcule de la factorielle');
  Write('Entrer le nombre : ');
  read(nombre);
  Repeat
    fact := i*fact;
    i := i +1;
  Until (i = nombre +1);
  Writeln('Le factorielle est ', fact:0:2);
End.