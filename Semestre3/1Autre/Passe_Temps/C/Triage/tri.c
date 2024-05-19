#include <stdio.h>
#include <stdlib.h>

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