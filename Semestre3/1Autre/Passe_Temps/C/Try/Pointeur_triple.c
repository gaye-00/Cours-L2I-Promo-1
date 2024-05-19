#include <stdio.h>
#include <stdlib.h>
void triple(int *n);

int main(void)
{
	int nombre;

	printf("Entrer un nombre : ");	
	scanf("%d", &nombre);
	triple(&nombre);

	printf("Le tripler est maintenant % d\n", nombre);

	return 0;
}
void triple(int *n){
	*n *= 3;
}