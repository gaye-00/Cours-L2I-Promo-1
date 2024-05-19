#include <stdio.h>
#include <stdlib.h>
int somme_tableau(int tab[], int);
int nbOccurrences(int tab[], int, int);
void saisi_tableau(int tab[], int);

int main(void) {

	int *tableau = NULL;
	int taille = 0, cherche;

	tableau = malloc(sizeof(int) * taille);

	if(tableau == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	do {
		printf("Donner la taille du tableau : ");
		scanf("%d", &taille);
	} while(taille <= 0);

	printf("\n");
	saisi_tableau(tableau, taille);

	printf("\n");
	printf("La somme des elements du tableau est : %d\n", somme_tableau(tableau, taille));

	printf("Donner la valeur a rechercher dans le tableau : ");
	scanf("%d", &cherche);
	printf("Le nombre de fois ou %d est presente dans le tableau est %d\n", cherche, nbOccurrences(tableau, taille, cherche));

	free(tableau);

	return 0;
}

/*------------------------------------------------------------*/

int somme_tableau(int tab[], int n) {

	int somme = 0;
	for (int i = 0; i < n; i++)
		somme += tab[i];

	return somme;
}

/*------------------------------------------------------------*/

void saisi_tableau(int tab[], int n) {

	for(int i = 0; i < n; i++) {
		printf("Donner la valeur de Tab[%d] : ", i+1);
		scanf("%d", &tab[i]);
	}
}

/*------------------------------------------------------------*/

int nbOccurrences(int tab[], int n, int cherche) {

	int nombre = 0;

	for (int i = 0; i < n; ++i) {
		if(tab[i] == cherche)
			nombre++;
	}

	return nombre;
}