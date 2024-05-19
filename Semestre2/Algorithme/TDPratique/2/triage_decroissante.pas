Program echange_de_tableau_decroissante;
type tab = array[1..10] of Real;
var i, j: Integer;
	tmp : real;
    A : tab;
begin
	for i := 1 to 10 do
	begin 
      write('Entrer l''element T[',i,'] : ');
      readln(A[i]);
    end;

    writeln('Avant triage');
    for i := 1 to 10 do
    	write(A[i]:0:2,' ');

    for i := 1 to 9 do 
    	for j := 1+i to 10 do
    	begin
    		if (A[i] < A[j]) then
    		begin
    			tmp := A[i];
    			A[i] := A[j];
    			A[j] := tmp;
    		end;
    	end;

    writeln;
    writeln('Apres triage');
    for i := 1 to 10 do
    	write(A[i]:0:2,' ');

end.