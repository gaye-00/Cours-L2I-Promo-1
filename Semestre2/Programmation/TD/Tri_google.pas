Procedure TriABulles(Var Tab:Array Of Integer);
Var i,j,t:Integer;
Begin
  For i:=Low(Tab) To High(Tab)-1 Do 
    For j:=i+1 To High(Tab) Do 
      If Tab[i]>Tab[j] Then
      Begin
         t:=Tab[i];
         Tab[i]:=Tab[j];
         Tab[j]:=t;
      End;
End;

Procedure TriRapide(Var Tab:Array Of Integer);
Var i,j,t:Integer;
  Function Partition(m,n:Integer):Integer;
  Var i,j,v:Integer;
  Begin
    v:=Tab[m];
    i:=m-1;
    j:=n+1;
    while True Do
    Begin
      Repeat Dec(j) Until Tab[j]<=v;
      Repeat Inc(i) Until Tab[i]>=v;
      if (i<j)
      Then Begin
        t:=Tab[i];
        Tab[i]:=Tab[j];
        Tab[j]:=t;
      End
      Else Begin
        Result:=j;
        Exit;
      End;
    End;
  End;

  Procedure FaitTri(m,n:Integer);
  Var p:Integer;
  Begin
    If m<n
    Then Begin
      p:=partition(m,n);

      FaitTri(m,p);
      FaitTri(p+1,n);
    End;  
  End;
Begin
  FaitTri(Low(Tab),High(Tab));
End.