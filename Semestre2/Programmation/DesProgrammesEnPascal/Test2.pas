Program les_etudiants;
Uses Wincrt;

Const max_c = 2001;
Type
  Etudiant = Record
    prenom : String[50];
    nom : String[30];
    NCE : String[20];
    rang : Integer;
    moy : Real;
  End;
  tab = Array[1..max_c] Of Etudiant;
Var
  T : tab;
  taille : Integer;

//---------------------------------------------------------------------------------------------------------------//

Procedure affiche(T : tab; n : Integer);
Var
  i : Integer;
Begin
  Writeln;
  For i := 1 To n Do
    Writeln('NCE : ',T[i].NCE,' ',T[i].prenom,' ',T[i].nom,' Moy : ',T[i].moy:0:2,'  Rang : ',T[i].
            rang);
  Writeln;
End;

//---------------------------------------------------------------------------------------------------------------//

Procedure affiche_exqo(T : tab ; n : Integer);
Var
  i : Integer;
Begin
  For i := 1 To n Do
    Writeln('Les Rangs : ',T[i].rang);
End;

//---------------------------------------------------------------------------------------------------------------//

Procedure saisie_un(Var p : Etudiant);
Begin
  Writeln;
  Write('Donner le prenom de l''Etudiant : ');
  Readln(p.prenom);
  Write('Donner le nom de l''Etudiant : ');
  Readln(p.nom);
  Write('Donner le numero de la carte de l''Etudiant : ');
  Readln(p.NCE);
  Write('Donner la moyenne de l''Etudiant : ');
  Readln(p.moy);
End;

//---------------------------------------------------------------------------------------------------------------//

Procedure saisie(Var T : tab; n : Integer);
Var
  i : Integer;
Begin
  For i := 1 To n Do
    T[i].moy := 0;
  For i := 1 To n Do
    saisie_un(T[i]);
  affiche(T, n);
End;

//---------------------------------------------------------------------------------------------------------------//

Procedure Rang(Var T : tab; n : Integer);
Var
  i , cmp: Integer;
Begin
  cmp := 1;
  T[1].rang := cmp;
  For i := 2 To n Do
    Begin
      If (T[i-1].moy = T[i].moy) Then
        T[i].rang := cmp
      Else
        Begin
          cmp := cmp + 1;
          T[i].rang := cmp;
        End;
    End;
End;

//---------------------------------------------------------------------------------------------------------------//

Procedure Echange(Var p1, p2 : Etudiant);
Var
  tmp : Etudiant;
Begin
  tmp := p1;
  p1 := p2;
  p2 := tmp;
End;

//---------------------------------------------------------------------------------------------------------------//

Procedure tri(Var T : tab; n : Integer);
Var
  i, j : Integer;
Begin
  For i := 1 To n-1 Do
    For j := i+1 To n Do
      If (T[i].moy < T[j].moy) Then
        Echange(T[i], T[j]);
  Rang(T, n);
End;

//---------------------------------------------------------------------------------------------------------------//

Procedure verifie(Var T : tab ; n : Integer);
Var
  i, j : Integer;
  ok : Boolean;
Begin
  For i := 1 To n-1 Do
    Begin
      ok := False;
      If (T[i].moy = T[i+1].moy) Then
        Begin
          j := i;
          While ((j <= n) And (ok = False)) Do
            Begin
              If (T[i].nom[j] > T[i+1].nom[j]) Then
                Echange(T[i], T[i+1])
              Else If (T[i].nom[j] = T[i+1].nom[j]) Then
                     j := j + 1
              Else
                ok := True;
            End;
        End;
    End;

//---------------------------------------------------------------------------------------------------------------//
  Begin

//////////////////////////////////////// Debut du prgramme principal ////////////////////////////////////////
    Repeat
      Write('Donner le nombre d''Etudiant : ');
      Readln(taille);
    Until ((taille > 0) And (taille <= max_c-1));
    Writeln;
    saisie(T, taille);
    Writeln;
    Writeln('Avant tri_rapide');
    affiche(T, taille);
    tri(T,taille);
    Writeln;
    Writeln('Apres tri_rapide');
    affiche(T, taille);
    Writeln;
    Writeln('Les exqos ');
    affiche_exqo(T, taille);
    Writeln;
    Writeln('Test verifie');
    verifie(T, taille);
    affiche(T, taille);
  End. //////////////////////////////////////// Fin du prgramme principal /////////////////////////////////////////
