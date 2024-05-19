#include <stdio.h>
#include <stdlib.h>
unsigned long factorielle(int n);

int main(void)
{
	int nombre,fact;

	printf("Entrer un nombre : ");
	scanf("%d", &nombre);

	fact = factorielle(nombre);

	printf("Le factoriel de %d est %d\n",nombre, fact);
	return 0;
}
unsigned long factorielle(int n){
	if (n < 0)
		exit(EXIT_FAILURE);

	if ((n == 1) || (n == 0))
		return 1;

	else
		return n * factorielle(n-1);
}