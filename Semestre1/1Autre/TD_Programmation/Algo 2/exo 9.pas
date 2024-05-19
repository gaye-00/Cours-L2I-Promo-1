Program table_de_multiplication;
uses wincrt;
Var i : Integer;

BEGIN

		i := 0;
		for i := 1 to 10 Do
		Begin
						write('1 * ',i,' = ',1*i,'  | ');
						write('2 * ',i,' = ',2*i,'  | ');
						write('3 * ',i,' = ',3*i,'  | ');
						write('4 * ',i,' = ',4*i,'  | ');
						writeln('5 * ',i,' = ',5*i,'  | ');
		end;


	 Readkey;
END.