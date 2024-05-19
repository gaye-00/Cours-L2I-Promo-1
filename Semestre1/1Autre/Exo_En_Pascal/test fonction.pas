program test_fonction;
uses wincrt;
Var
		a, b, c, d : real;
FUNCTION Produit ( x , y : real) : real;
Var  return : real;
Begin
		return := x * y;
		produit := return;
end;

Begin

	write('Entrer la valeur de A : ');
	read(a);

	write('Entrer la valeur de B : ');
	read(b);

	c := produit(a , b);
	d := produit(a-1, b-1);

	writeln('c = ',c:0:2,' et D = ',d:0:2);

END.