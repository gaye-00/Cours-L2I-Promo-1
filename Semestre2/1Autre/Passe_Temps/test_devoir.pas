program nombre_de_bus;
uses wincrt;
var nb_per, cap_bus, nb_bus0, last_bus : integer;
	nb_bus1 : real;
begin
	repeat
		write('Entrer le nombre de personne : ');
		readln(nb_per);
		write('Entrer les capacit des bus : ');
		readln(cap_bus)
	until ((nb_per > 0) and (cap_bus > 0));

	nb_bus1 := nb_per / cap_bus;
	nb_bus0 := nb_per div cap_bus;

	if (nb_bus1 > nb_bus0) then
		nb_bus0 := nb_bus0 + 1;

	writeln('Le nombre de bus necessaire est : ',nb_bus0);

	last_bus := nb_bus0 * cap_bus - nb_per;
	if (last_bus = 0) then
		writeln('Le nombre de personne eyant pris place dans le dernier bus est : ',cap_bus)

	else
		writeln('Le nombre de personne eyant pris place dans le dernier bus est : ',last_bus);//Affiche les places vides
end.