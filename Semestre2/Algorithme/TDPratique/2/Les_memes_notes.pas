Program les_exgeco;
uses wincrt;
const max_c = 10;
Type type_tab = array[1..max_c] of Integer;
var A : type_tab;
	i, j, tmp : Integer;
//////////////////////////////////////////
procedure les_memes(X : type_tab; n : Integer);
var i, cmp, k : Integer;
begin
	i := 1; 
	while (i <= n) do
	begin
		k := 1; cmp := 1;
		while (i < n) and (X[i] = X[i+cmp]) do
			cmp := cmp + 1;

		if (cmp <> 1) then
		begin 
			writeln('La note ',X[i],' est presente ',cmp,' fois');
			for k := i to (i+cmp-1) do
				write(' ',X[k]);
			writeln;
		end;
		i := i + cmp;
	end;

end;
////////////////////////////////////////////
BEGIN 

	for i := 1 to max_c do
	begin
		write(i,' : Enter les elements du tableau : ');
		read(A[i]);
	end;

	for i := 1 to (max_c - 1) do
		for j := (1 + i) to max_c do
		begin
			if (A[i] < A[j]) then
			begin
				tmp := A[i];
				A[i] := A[j];
				A[j] := tmp;
			end;
		end;

	les_memes(A, max_c);


END.