#include <stdio.h>
#include <stdlib.h>
/*-------------------------------------------*/

int main(void)
{
	int nombre, longue, carre;

	do {
		printf("*Entrer un entier positive : ");
		scanf("%d", &nombre);
	} while (nombre < 0);

	/*longue = length(nombre);*/
	carre = nombre*nombre;

	return 0;
}