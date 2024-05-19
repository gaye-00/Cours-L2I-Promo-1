#include <stdio.h>
int est_puissance(int, int);

int main(void) {

	int nombre1, nombre2;

	do {
		printf("Donner un 1-er entier : ");
	scanf("%d", &nombre1);

	printf("Donner un 2-eme entier : ");
	scanf("%d", &nombre2);	
	} while(nombre1 <= 0 || nombre2 <= 0);
	

	if(est_puissance(nombre1, nombre2) == 1)
		printf("%d est une puissance de %d", nombre1, nombre2);
	else
		printf("%d n'est pas une puissance de %d", nombre1, nombre2);


	return 0;
}

/*----------------------------------------------------------------------------*/

int est_puissance(int a, int b) {

	if(a == b)
		return 1;
	else if(a % b == 0)
		return est_puissance(a / b, b);
	else
		return 0;

}