#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int inverse_nombre(int arriver);
int difference(int nombre1, int nombre2);

int main(void) {

	int nombre, diff;

	do {
		printf("Donner un nombre entier numero 1: ");
		scanf("%d", &nombre);	
	} while((nombre <= 9) || (nombre > 99));

	printf("\n");
	diff = difference(nombre, inverse_nombre(nombre));
	printf("%d - %d = %d\n", nombre, inverse_nombre(nombre), diff);

	while(diff > 9 ) {
		printf("%d - %d = %d\n", diff, inverse_nombre(diff), difference(diff, inverse_nombre(diff)));
		diff = difference(diff, inverse_nombre(diff));
		//exit(1);
	}

	printf("Liste vers %d\n", diff);

	
	return 0;
}

/*-------------------------------------------------------------------------------------------------------*/
int inverse_nombre(int arriver) {

	int depart = 0;

	while(arriver > 0) {
		depart = depart * 10 + arriver % 10;
		arriver /= 10;
	}

	return depart;
}

/*-------------------------------------------------------------------------------------------------------*/

int difference(int nombre1, int nombre2) {
	return abs(nombre1 - nombre2);
}