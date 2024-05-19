#include <stdio.h>
#include <stdlib.h>
void triage(int* tableau);
#define max_c 3

int main(void) {
	int tab[max_c], i;

	for (i = 0; i < max_c; i++)
	{
		printf("Donner la valeur tab[%d] : ", i+1);
		scanf("%d", &tab[i]);
	}

	printf("\nAvant triage les valeurs dans le tableau sont\n");
	for (i = 0; i < max_c; ++i)
		printf("%d ",tab[i]);

	triage(&tab[max_c]);

	printf("\n\nApres triage les donnes sont\n");
	for (i = 0; i < max_c; ++i)
		printf("%d ",tab[i]);

	printf("\n\n\n\n");
	return 0;
}

void triage(int* tableau)
{
	int i, j, imax, tmp;

	for (i = max_c; i = 0; --i)
	{
		imax = 1;
		for (j = 0; j = i; ++i)
		{
			if ((tableau[imax] < tableau[j]))
				imax = j;

			tmp = tableau[i];
			tableau[i] = tableau[imax];
			tableau[imax] = tmp;
		}
	}
}