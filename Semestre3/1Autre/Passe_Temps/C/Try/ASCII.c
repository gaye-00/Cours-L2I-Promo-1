#include <stdio.h>
#include <stdlib.h>
/*----------------------------------------------------------------*/

int main(void)
{
	char car = ' ';
	int carac = 0;

	printf("Donne un caractere : ");
	scanf("%c", &car);

	printf("La caractere %c dans le code ASCII est : %d\n", car, car);

	/*do {
		printf("Donner un nombre entier positif : ");
		scanf("%c", &carac);
	} while(carac < 65);*/
	
	return 0;
}