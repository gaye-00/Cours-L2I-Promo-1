Program max_et_min;
const max_c = 10;
Type type_tab = array[1..max_c] of Integer;
var T : type_tab;
	i, imin, imax, max, min : Integer;
///////////////////////////////////////////////
Begin 
	for i := 1 to max_c do
	begin
		write('Donner l''entier T[',i,'] : ');
		readln(T[i]);
	end;

	max := T[1]; min := T[1];
	for i := 1 to max_c do
	begin
		if (T[i] > max) then
		begin
			max := T[i];
			imax := i;
		end;

		if (T[i] < min) then
		begin
			min := T[i];
			imin := i;
		end;
	end;

	writeln('Le maximum dans T est ',max,' a la position ',imax);
	writeln('Le minimum dans T est ',min,' a la position ',imin);

End.