Program TrierRapidement;
const max_c = 2000;
Type tab = Array [1..max_c] Of Integer;
Var t: tab;
	i: Integer;
	taille : Integer;
//----------------------------------------------------------------------//
procedure echange(var Ti, Tj : Integer);
var tmp : Integer;
begin
	tmp := Ti;
	Ti := Tj;
	Tj := tmp;
end;
//----------------------------------------------------------------------//
Function partitinner (Var t:tab;imin,imax:Integer): Integer;
Var i,j,v,tmp: Integer;
Begin
	v := t[imax];
	j := imin;

	For i:=imin To imax-1 Do
		If (t[i]<v) Then
		Begin
			echange(T[i], T[j]);
			j := j+1;
		End;
		
	echange(T[j], T[imax]);
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
	repeat
		Write('Donner la taille du tableau : ');
		Readln(taille);
	until ((taille > 0) and (taille <= max_c));

	Writeln;
	For i := 1 To taille Do
	Begin
		Write('Donner un nombre T[',i,'] : ');
		Readln(t[i]);
	End;

	Writeln;
	tri_rapide(t,1,taille);
	For i := 1 To taille Do
		Write(t[i],' ');
End.