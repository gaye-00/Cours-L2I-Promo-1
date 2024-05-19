#include <stdio.h>
#include <stdlib.h>
#include "tri.h"
/*--------------------------------------------------------------------------*/

int main(void)
{
	float *tableau = NULL;
	int nombre = 0;
	//int choix = 0;

	do {
		printf("Donner la taille du tableau : ");
		scanf("%d", &nombre);
	} while(nombre <= 0);

	tableau = malloc(sizeof(float) * nombre);

	if(tableau == NULL) {
		printf("L'allocation du tableau a echoue\n");
		exit(1);
	}

	saisi(tableau, nombre);

	printf("\nAffichage des elements avant triage\n");
	affiche(tableau, nombre);

	//switch(choix) 
	tri_bulle(tableau, nombre);

	printf("\n\nAffichage des elements apres triage\n");
	affiche(tableau, nombre);


	free(tableau);

	return 0;
}