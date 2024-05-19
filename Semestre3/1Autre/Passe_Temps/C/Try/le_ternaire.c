#include <stdio.h>
#include <stdlib.h>
/*-------------------------------------------*/

int main(void)
{
	int nombre = 0, verifier = 0;

	printf("Entrer un nombre : ");
	scanf("%d", &nombre);

	verifier = (nombre >= 0) ? 1 : 0;

	if(verifier)
		printf("Le nombre entrer %d est positive\n", nombre);
	else
		printf("Le nombre entrer %d est negative\n", nombre);

	return 0;
}