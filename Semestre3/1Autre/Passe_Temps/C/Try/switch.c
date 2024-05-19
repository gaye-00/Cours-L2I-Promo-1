#include <stdio.h>
#include <stdlib.h>
/*----------------------------------------------------------------*/

int main(void)
{
	int nombre = 0;

	printf("Entrer un nombre : ");
	scanf("%d", &nombre);

	switch(nombre) {
		case 1 : printf("Le nombre entrer est 1 !\n");
		break;
		case 2 : printf("Le nombre entrer est 2 !\n");
		break;
		case 3 : printf("Le nombre entrer est 3 !\n");
		break;
		default : printf("Le nombre entrer n'est ni 1, ni 2, ni 3");
		break;
	}

	return 0;
}