#include <stdio.h>
#include <stdlib.h>
/*----------------------------------------------------------------*/

int main(void)
{
	/*
		Constante predifinie du langage C
		__FILE__ (nom du fichier)
		__LINE__ (ligne du fichier)
		__DATE__ (date de compilation)
		__TIME__ (heure de compilation)
	*/	

	printf("Le nom du fichier est : %s\n",__FILE__);
	printf("La date de compilation du fichier est : %s\n",__DATE__);
	printf("L'heure de compilation du fichier est : %s\n",__TIME__);

	return 0;
}