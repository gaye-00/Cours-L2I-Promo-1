#include <stdio.h>
#include <stdlib.h>
int pgcd_euclide(int r0, int r1);


int main(void) {

	int a, b;

	do {
		printf("Donner un 1er entier : ");
		scanf("%d", &a);

		printf("Donner un 2-eme entier : ");
		scanf("%d", &b);
	} while((a < 0) || (b < 0));

	int pgcd;

	if((a % b) == 0)
		pgcd = b;

	else if((b % a) == 0)
		pgcd = a;

	else if(a < b)
		pgcd = pgcd_euclide(b, a);

	else
		pgcd = pgcd_euclide(a, b);

	printf("Le PGCD de %d et %d est : %d\n", a, b, pgcd);

	return 0;
}

/*-----------------------------------------------------------------*/

int pgcd_euclide(int r0, int r1) {

	if((r0 % r1) == 0)
		return r1;
	
	return pgcd_euclide(r1, r0 % r1);
}