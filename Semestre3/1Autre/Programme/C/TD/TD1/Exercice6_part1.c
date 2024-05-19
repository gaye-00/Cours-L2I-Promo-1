#include <stdio.h>
int puis(int, int);
static int fois;

int main(void) {

	int nombre1, nombre2, value;

	do {
		printf("Donner un 1-er entier : ");
	scanf("%d", &nombre1);

	printf("Donner un 2-eme entier : ");
	scanf("%d", &nombre2);	
	} while(nombre1 <= 0 || nombre2 <= 0);


	if(nombre1 > nombre2) {
		fois = nombre2;
		value = puis(nombre1, nombre2);
	}
	else {
		fois = nombre1;
		value = puis(nombre2, nombre1);
	}

	if(value == 1)
		printf("%d est une puissance de %d \n", nombre1, nombre2);
	else
		printf("%d n'est pas une puissance de %d \n", nombre1, nombre2);
	
	return 0;
}

/*-----------------------------------------------------*/
int puis(int nb1, int nb2) {
	if(nb1 == nb2)
		return 1;

	if(nb2 > nb1)
		return 0;

 	return puis(nb1,(nb2 * fois));
} 
