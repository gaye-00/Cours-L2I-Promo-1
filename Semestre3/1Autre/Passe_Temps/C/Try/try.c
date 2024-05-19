#include <stdio.h>
#include <stdlib.h>
/*-------------------------------------------------------------------*/

int main(void) {
	
	char nom[10];

	printf("Donner ton nom : ");
	gets(nom);

	puts(nom);

	return 0;
}