#include <stdio.h>
#include <stdlib.h>

int main(void) {

	int *tableau = NULL;
	int taille = 0, i;

	tableau = malloc(sizeof(int) * taille);

	if(tableau == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	printf("Donner la taille du tableau : ");
	scanf("%d", &taille);


	for(i = 0; i < taille; i++) {
		printf("Donner la valeur de Tab[%d] : ", i+1);
		scanf("%d", &tableau[i]);
	}

	int min = tableau[0], max = tableau[0];
	for(i = 0; i < taille; i++) {
		if(tableau[i] < min)
			min = tableau[i];
		if(tableau[i] > max)
			max = tableau[i];
	}

	printf("\n");
	printf("Le minimum est %d\n", min);
	printf("Le maximum est %d\n", max);


	free(tableau);

	return 0;
}