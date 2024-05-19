#include <stdio.h>
#include <stdlib.h>
/*------------------------------------------------------------------------*/
#define max 1000
void saisi(float tab[], int n);
void affiche(float tab[], int n);
void tri_bulle(float tab[], int n);
void echange(float *p1, float *p2);
/*------------------------------------------------------------------------*/

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
/*------------------------------------------------------------------------*/
void saisi(float tab[], int n) {
	int i;
	for(i = 0; i < n; i++) {
		printf("Tab[%d] : ", i+1);
		scanf("%f", &tab[i]);
	}
}
/*------------------------------------------------------------------------*/
void affiche(float tab[], int n) {
	int i;

	for(i = 0; i < n; i++)
		printf("%.2f  ", tab[i]);
}
/*------------------------------------------------------------------------*/
void echange(float *p1, float *p2) {
	float tmp;
	tmp = *p1;
	*p1 = *p2;
	*p2 = tmp;
}
/*------------------------------------------------------------------------*/
void tri_bulle(float tab[], int n) {
	int i, j;
	
	for(i = 0; i < n-1; i++)
		for(j = i + 1; j < n; j++)
			if(tab[i] < tab[j])
				echange(&tab[i], &tab[j]);
}
/*------------------------------------------------------------------------*/