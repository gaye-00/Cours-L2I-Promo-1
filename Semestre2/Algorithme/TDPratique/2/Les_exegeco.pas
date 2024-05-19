Program les_exgeco;
uses wincrt;
const max_c = 2000;
Type type_tab = array[1..max_c] of Integer;
var A : type_tab;
	i, j, cmp, taille : Integer;

////////////////////////////////////////////
BEGIN 

	repeat
		write('Entrer la taille du tableau : ');
		read(taille);
	until (taille > 0) and (taille <= 2000);

	writeln;
	for i := 1 to taille do
	begin
		write('Enter l''element tab[',i,'] : ');
		read(A[i]);
	end;

	for i := 1 to (taille - 1) do
		for j := (1 + i) to taille do
		begin
			if (A[i] < A[j]) then
			begin
				cmp := A[i];
				A[i] := A[j];
				A[j] := cmp;
			end;
		end;

	writeln; i := 1;
	while (i <= taille) do
	begin
		cmp := 1;
		while ((i < taille) and (A[i] = A[i+cmp])) do
			cmp := cmp + 1;

		if (cmp <> 1) then
			writeln('Le nombre ',A[i],' est presente ',cmp,' fois dans le tableau');

		i := i + cmp;
	end;

END.