#include <stdio.h>
#include <stdlib.h>
/*----------------------------------------------------------------*/

int main(void)
{
	int *tableau = NULL;
	int taille = 0, i;

	printf("Donner la taille du tableau : ");
	scanf("%d", &taille);

	tableau = calloc(taille, sizeof(int) * taille);
	/*
		calloc permet de reserver de l'espace memoire
		mais en unitiaisant la memoire en 0(probable)
	*/

	if(tableau == NULL) {
		fprintf(stderr, "Probleme d'allocation de la memoire\n"); //  <==========
		exit(1);
	}

	for(i = 0; i < taille; i++) {
		printf("Donner l'element tab[%d] : ", i+1);
		scanf("%d", &tableau[i]);
	}

	for(i = 0; i < taille; i++)
		printf("Tab[%d] : %d\n", i+1, tableau[i]);

	printf("\n\nDonner la taille du nouveau tableau : ");
	scanf("%d", &taille);

	tableau = realloc(tableau, sizeof(int) * taille);
	/*
		realloc permet de reallouer la memoir pour
		donner une nouvelle taille
	*/

	free(tableau);

	return 0;
}