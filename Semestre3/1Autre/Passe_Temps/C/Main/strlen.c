#include <stdio.h>
#include <string.h>
/*----------------------------------------------------------------*/

int main(void)
{
	char chaine[15];
	int longue;

	printf("Donner un mot : ");
	gets(chaine);

	longue = strlen(chaine);
	printf("\nLa longueur du mot est : %d",longue);

	return 0;
}