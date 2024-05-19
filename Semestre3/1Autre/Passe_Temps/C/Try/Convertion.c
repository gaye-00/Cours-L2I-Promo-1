#include <stdio.h>
#include <stdlib.h>
/*-------------------------------------------*/

int main(void)
{
	char chaine[100] = "Abdoulaye Gaye";
	int nombre;

	printf("Donner un nombre : ");	
	scanf("%d",&nombre);

	itoa(nombre, chaine, 10);
	puts(chaine);

	return 0;
}