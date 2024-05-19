#include <stdio.h>
#include <stdlib.h>
void saisie(int tab[], int taille);
void affiche(int tab[], int taille);
#define max 5
/*---------------------------------------------------*/
int main(void)
{
	int tab[max];
	saisie(tab, max);
	affiche(tab, max);

	return 0;
}
/*---------------------------------------------------*/
void saisie(int tab[], int taille) {
	int i;
	for (i = 0; i < taille; i++) {
		printf("Donner tab[%d] : ", i+1);
		scanf("%d", &tab[i]);
	}
}

void affiche(int tab[], int taille) {
	int i;
	for (i = 0; i < taille; i++)
		printf("%d ", tab[i]);
}