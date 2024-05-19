program age_de_la_personne;
uses wincrt;
Var
	 age : integer;

Begin
write('Entrer l''age de la personne : ');
read(age);

if (age <= 0) and (age >= 20) then
writeln('La personne est un enfant');

 if (age > 20) and (age <= 40) then
writeln('La personne est un adulte');
												
if (age > 40 ) and (age <= 80) then
writeln('La personne est agee');

if (age > 80) and (age <= 100) then
writeln('La personne est tres agee');

if (age > 100) and (age <= 120) then
writeln('La personne est tres tres agee');

if (age < 0) or (age > 120) then
Repeat
writeln;
writeln('L''age de la personne entrer n''est pas bon');
write('Entrer encore l''age de la personne svp : ');
read(age);

	if ((age >= 0) and (age <= 120)) Then
		Begin
		    writeln;
				writeln('L''age de la personne entrer est bon maintenant merci');
				exit;
		end;

age := age + 1;
until (age > 0) and (age < 120)

END.