#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

/*typedef enum {
	false, 
	true
} Bool;*/

void verifierdoublon(int tab[], int);


int main(void) {

	
	//int *tableau = NULL;
	int  i,taille=5;
int tableau[]={1,0,6,6,1,2};
/*
	do {
		printf("Donner la taille du tableau : ");
		scanf("%d", &taille);
	} while(taille <= 0);

	tableau = malloc(sizeof(int) * taille);

	if(tableau == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	printf("\n");
	for(i = 0; i < 5; i++) {
		printf("Donner la valeur de Tab[%d] : ", i+1);
		scanf("%d", &tableau[i]);
	}	
*/
	verifierdoublon(tableau, taille);

	return 0;
}
	
/*-------------------------------------------------------------------------------------------*/

void verifierdoublon(int tab[], int n) {

	bool ok = false;
	int i, j = 0;

	while((ok == false) && (j < n)) {
		for(i = 0; i < n; i++) {
			if((tab[j] == tab[i]) && (i =! j)) {
				ok = true;
				break;
			}
		}

		j++;
	}

	if(ok == true)
		printf("La premiere valeure doublon est %d dans pos %d et %d\n", tab[i], i, j-1);
	else
		printf("Il n'y a pas de valeur doublon dans le tableau\n");

	return;
}
