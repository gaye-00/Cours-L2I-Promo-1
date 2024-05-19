#include <stdio.h>
#include <stdlib.h>
/*----------------------------------------------------------------*/
#define TAILLE 5
/*----------------------------------------------------------------*/
int *cree_tableau(void);
void affiche_tableau(int tab[], int n);
/*----------------------------------------------------------------*/

int main(void)
{
	int *tableau = cree_tableau();

	affiche_tableau(tableau, TAILLE);

	return 0;
}
/*----------------------------------------------------------------*/
int *cree_tableau(void) {
	static int tableau[TAILLE];
	int i;

	for(i = 0; i < TAILLE; i++)
		tableau[i] = 3*i;
	return tableau;
}
/*----------------------------------------------------------------*/
void affiche_tableau(int tab[], int n)	{
	int i;

	for(i = 0; i < TAILLE; i++)	
		printf("Tab[%d]  ",tab[i]);
}
/*----------------------------------------------------------------*/