#include <stdio.h>
#include <stdlib.h>
#include <string.h>
/*-------------------------------------------*/

int main(void)
{
	char prenom[100]; int longue;

	printf("Bonjour, quel est ton nom ? \n");
	gets(prenom);

	printf("\nBienvnue %s, moi c'est l'Ami, je suis heureux de te rencontrer !\n",prenom);

	longue = strlen(prenom);
	printf("%s compte %d caracteres\n",prenom, longue );

	return 0;
}