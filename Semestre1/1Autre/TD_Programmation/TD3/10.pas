Program exercice_td2_3_10;
uses wincrt;
Var
   //T : array [1..50] of  Integer;
	 i, table : Integer;

Begin
     i := 1;
		 for i := 1 to 50 Do
		 Begin
				 table := 13 * i;
				 if (table mod 7 = 0) Then
				 Begin
						 writeln('13 * ',i,' = ',table);
				 end;
		 end;


end.