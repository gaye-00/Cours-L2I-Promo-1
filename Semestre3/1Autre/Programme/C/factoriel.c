#include <stdio.h>
#include <stdlib.h>
int factorel(int n);


int main(void) {

	int nombre;

	do {
		printf("Donner un entier positive : ");
		scanf("%d", &nombre);
	} while(nombre < 0);

	printf("%d! = %d\n", nombre, factorel(nombre));



	return 0;
}

/*---------------------------------------------------------------------------*/

int factorel(int n) {
	if(n == 0)
		return 1;
	else
		return n * factorel(n - 1);
}