Program echange_de_tableau;
type tab = array[1..10] of Real;
var i, j: Integer;
	tmp : real;
    A : tab;
{procedure les_execo(X : tab; n : Integer);
var i, j : Integer;
begin
    for i := 1 to (n - 1) do
    begin
        if (X[i] = X[i+1]) then
        begin
            writeln('Les etudiants suivants ont la meme moyenne');
            writeln(X[i]:0:2);

            j := i + 1;
            while (j <= n) and (X[j] = X[i]) do
            begin
                writeln(X[i]:0:2);
            end;
        end;
    end;
end;}
//***************************************//
procedure les_execo2(X : tab; n : Integer);
var i, j : Integer;
begin
    
end;

////////////////////////////////////////////////
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
    		if (A[i] > A[j]) then
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

    les_execo(A, 10);

end.