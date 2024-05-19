function controle(X : tab_phone): Boolean;
var ok : Boolean;
	i : Integer;
begin
	ok := true; i := -1;
	while ((ok) and (i = -1)) do 
	begin
		i := 1;
		while ((ok) and (i <= max_c)) do
		begin
			if ((X[i].dt.annee < 2000) or (X[i].dt.annee > 2021)) then
				ok := false
			else
				i := i + 1;
		end;

		i := 1;
		while ((ok) and (i <= max_c)) do
		begin
			if ((X[i].dt.mois < 1) or (X[i].dt.mois > 12)) then
				ok := false
			else
				i := i + 1;
		end;

		i := 1;
		while ((ok) and (i <= max_c)) do
		begin
			if ((X[i].dt.jour < 1) or (X[i].dt.jour > 31)) then
				ok := false

				else if ((X[i].dt.mois = 2) and (X[i].dt.jour > 28)) then
					ok := false
			else
				i := i + 1;
		end;

		i := 1;
		while ((ok) and (i <= max_c)) do
		begin
			if ((X[i].dt.mn < 0) or (X[i].dt.mn > 59)) then
				ok := false
			else
				i := i + 1;
		end;
	end;

	controle := ok;
end;
function controle(X : tab_phone): Boolean;
var ok : Boolean;
	i : Integer;
begin
	ok := true; i := -1;
	while ((ok) and (i = -1)) do 
	begin
		i := 1;
		while ((ok) and (i <= max_c)) do
		begin
			if ((X[i].dt.annee < 2000) or (X[i].dt.annee > 2021)) then
				ok := false
			else
				i := i + 1;
		end;

		i := 1;
		while ((ok) and (i <= max_c)) do
		begin
			if ((X[i].dt.mois < 1) or (X[i].dt.mois > 12)) then
				ok := false
			else
				i := i + 1;
		end;

		i := 1;
		while ((ok) and (i <= max_c)) do
		begin
			if ((X[i].dt.jour < 1) or (X[i].dt.jour > 31)) then
				ok := false

				else if ((X[i].dt.mois = 2) and (X[i].dt.jour > 28)) then
					ok := false
			else
				i := i + 1;
		end;

		i := 1;
		while ((ok) and (i <= max_c)) do
		begin
			if ((X[i].dt.mn < 0) or (X[i].dt.mn > 59)) then
				ok := false
			else
				i := i + 1;
		end;
	end;

	controle := ok;
end;
