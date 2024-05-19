#include <stdio.h>
#include <stdlib.h>
/*----------------------------------------------------------------*/

int main(void)
{
	int *tableau = NULL;
	int taille = 0, i;

	printf("Donner la taille du tableau : ");
	scanf("%d", &taille);

	tableau = malloc(sizeof(int) * taille);
	/*
		malloc permet de reserver de l'espace memoire
		mais sans l'unitialisation
	*/
	if (tableau == NULL) {
		fprintf(stderr, "Probleme d'allocation de la memoire\n");
		exit(1);
	}

	if(tableau == NULL)
		exit(1);

	for(i = 0; i < taille; i++) {
		printf("Donner l'element tab[%d] : ", i+1);
		scanf("%d", &tableau[i]);
	}

	for(i = 0; i < taille; i++)
		printf("Tab[%d] : %d\n", i+1, tableau[i]);

	free(tableau);

	return 0;
}