#include <stdio.h>
#include <stdlib.h>
/*-------------------------------------------*/

int main(void)
{
	char jour[7][9] = {"Lundi", "Mardi", "Mercedi", "Jeudi", "Vendredi", "Samedi", "Dimanche"};
	int i;

	for (i = 0; i < 7; i++) 
		printf("%s\n", jour[i]);

	return 0;
}