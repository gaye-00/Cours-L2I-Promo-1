Program les_exgeco;
uses wincrt;
const max_c = 10;
Type type_tab = array[1..max_c] of Integer;
var A : type_tab;
	i, j, tmp : Integer;
	//tmp : real;
procedure les_memes(X : type_tab; n : Integer);
var i, j, cree : Integer;
	tmp : Integer;
begin
	for i := 1 to max_c do
	begin
		cree := 0; //tmp := X[i]; 
		if (pos(X[i], X) = i) then
			writeln('La note est unique ')

		else
		begin
			for j := 1 to max_c do
				if (X[i] = X[j]) then
					cree := cree + 1;
		end;
		if (cree <> 0) then
			writeln('La note ',X[i],' est presente ',cree,' dans le tableau');
	end;
end;

////////////////////////////////////////////
BEGIN 

	for i := 1 to max_c do
	begin
		write('Enter les elements du tableau : ');
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