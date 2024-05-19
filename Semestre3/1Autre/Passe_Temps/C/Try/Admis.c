#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	int admis;
	float moyenne=0;
	do {
		printf("Donner la moyenne : ");
		scanf("%f", &moyenne);
	} while (moyenne < 0);

	(moyenne >= 10) ? printf("admis\n") : printf("Ajourne\n");
	admis = ((moyenne >= 10) ? 1 : 0);

	printf("La valeur de admis esf %d \n",admis);
	
	return 0;
}