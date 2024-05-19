#include <stdio.h>
#include <stdlib.h>
#include "tri.h"
/*----------------------------------------------------------------*/
#define max 1000
/*----------------------------------------------------------------*/
int main(void)
{
	float tab[max];
	int taille = 0;

	do {
		printf("Donner la taille du tableau : ");
		scanf("%d", &taille);
	} while((taille <= 0) || (taille > max));

	saisi(tab, taille);

	printf("\nAvant Triage du tableau\n");
	affiche(tab, taille);

	tri_bulle(tab, taille);
	printf("\n\nApres Triage du tableau\n");
	affiche(tab, taille);

	return 0;
}