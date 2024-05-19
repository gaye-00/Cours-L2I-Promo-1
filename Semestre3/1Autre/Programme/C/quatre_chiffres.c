#include <stdio.h>

int main(void) {

	int nombre;

	do {
		printf("Donner un nombre a 4 chiffres  : ");
		scanf("%d", &nombre);
	} while((nombre < 1000) || (nombre > 9999));
	//while((nombre > 9999) && (nombre < 1000));

	return 0;
}