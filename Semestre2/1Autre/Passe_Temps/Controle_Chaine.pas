Program controle_Chaine;
uses wincrt;
var S : String;
function controle_int(var X : String; n : Integer) : Boolean;
var i, long : Integer; ok : Boolean;
begin
	i := 1; ok := true;
	while ((i <= n) and (ok = true)) do
	begin
	 	//if ((X[i] = '0') or (X[i]  = '1') or (X[i]  = '2') or (X[i] = '3') or (X[i] = '4') or (X[i] = '5') or (X[i] = '6') or (X[i] = '7') or (X[i] = '8') or (X[i] = '9')) then
	 	if (X[i] >= '1') and (X[i] <= '9') then 
	 	begin
	 		ok := true;
	 		i := i + 1;
	 	end

	 	else
	 		ok := false;
	 end;

	 if (ok = true) then
	 	controle_int := true;

	while (ok = false) do
	begin
		writeln('La chaine entrer n''est pas valide');
		writeln;
		write('Entrer encore la chaine : ');
		readln(X);
		long := length(X);

		if (controle_int(X, long) = true) then
	 		ok := true;
	end;
end;

BEGIN

	write('Entrer une chaine de caractere composee que d''entiers : ');
	readln(S);

	controle_int(S, length(S));
	writeln('La chaine entrer est : ',S);
END.