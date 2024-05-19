#include <stdio.h>
#include <stdlib.h>
#include "queue.h"

int main(void) {

	print_queue();

	int nombre, x;

	printf("\n");
	do {
		printf("Donner le nombre d'elements que tu veut ajouter dans la File : ");
		scanf("%d", &nombre);
	} while(nombre <= 0);

	printf("\n");
	for (int i = 0; i < nombre; ++i) {
		printf("Donner le %d-eme element : ", i+1);
		scanf("%d", &x);

		push_queue(x);
	}

	print_queue();

	pop_queue();
	printf("\nSuppression du premier element de la file\n");
	print_queue();
	printf("\n");

	printf("La longueur est : %d\n", queue_length()); 

	clear_queue();
	print_queue();
	printf("La longueur est : %d\n", queue_length()); 

	return 0;
}