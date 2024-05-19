program savoir_impossible;
uses wincrt;
var nb : Integer; 
function retourimpossibe(X : Integer): Integer;
var A : Integer;
begin
	randomize;
	A := random(X);

	retourimpossibe := A;
end;

BEGIN 

  write('Enter un nombre : ');
  readkn(nb);

  writeln('Le nombre retourner est : ',retourimpossibe(nb));

END.