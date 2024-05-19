#include <stdio.h>
#include <stdlib.h>
/*-------------------------------------------*/

int main(void)
{
	int tab[100], taille, i, j;

	do {
		printf("Donner la taille du tableau : ");
		scanf("%d", &taille);
	} while ((taille < 0) || (taille >= 100));

	printf("\nDonner les elements du tableau\n");
	for (i = 0; i < taille; i++) {
		printf("Entrer Tab[%d] : ",i+1);
		scanf("%d", &tab[i]);
	}

	for (i = 0; i < taille; i++) {
		for (j = 0; j < taille; j++) {
			if (i != j) {
				printf("\n\nCouple Puce %d et Puce %d\n",i,j);
				printf("La puce %d dit    La puce %d dit   Conclusion\n",i, j);
				printf("%d est bonne      %d est bonne     Les deux sont bonnes, ou les deux sont mauvaises\n", j,i);
				printf("%d est bonne      %d est mauvaise  L'une au moins est mauvaise\n", j,i);
				printf("%d est mauvaise   %d est bonne     L'une au moins est mauvaise\n", j,i);
				printf("%d est mauvaise   %d est mauvaise  L'une au moins est mauvaise\n", j,i);	
			}
		}
	}

	return 0;
}