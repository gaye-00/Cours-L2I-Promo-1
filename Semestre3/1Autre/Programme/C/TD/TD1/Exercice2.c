#include <stdio.h>
#include <stdlib.h>


int main(void) {

	int nombre;

	do {
		printf("Donner un nombre compris entre 0 et 20 : ");
		scanf("%d", &nombre);

		if(nombre < 0)
			printf("Plus grand !\n");
		if(nombre > 20)
			printf("Plus petit !\n");

	} while((nombre < 0) || (nombre > 20));

	printf("Merci !");
	
	return 0;
}