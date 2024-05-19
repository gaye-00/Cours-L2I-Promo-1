Program TrierRapidement;
Type tab = Array [1..5] Of Integer;
Var t: tab;
	i: Integer;
	taille : Integer;
//----------------------------------------------------------------------//
Function partitinner (Var t:tab;imin,imax:Integer): Integer;
Var i,j,v,tmp: Integer;
Begin
	v := t[imax];
	j := imin;

	For i:=imin To imax-1 Do
		If (t[i]<v) Then
		Begin
			tmp := t[i];
			t[i] := t[j];
			t[j] := tmp;
			j := j+1;
		End;

	tmp := t[j];
	t[j] := t[imax];
	t[imax] := tmp;
	partitinner := j;
End;
//----------------------------------------------------------------------//
Procedure tri_rapide(Var t : tab;imin,imax:Integer);
Var i: Integer;
Begin
	If (imin<imax) Then
	Begin
		i := partitinner(t,imin,imax);
		tri_rapide(t,imin,i-1);
		tri_rapide(t,i+1,imax);
	End;
End;
//----------------------------------------------------------------------//

Begin
	For i := 1 To 5 Do
	Begin
		Writeln('Donner un nombre');
		Readln(t[i]);
	End;

	tri_rapide(t,1,5);
	For i := 1 To 5 Do
		Writeln(t[i]);
End.