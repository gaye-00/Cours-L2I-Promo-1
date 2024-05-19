#include <stdio.h>
#include <stdlib.h>
#include <string.h>
/*-------------------------------------------*/

int main(void)
{
	char chaine[]="Bienvenue a Marioupole qui est en Ukraine", *pointe=NULL;
	pointe = strchr(chaine, 'r');

	if (pointe != NULL)
		printf("\nVoici la fin de la chaine a partir du premier r : \n%s\n", pointe);

	return 0;
}