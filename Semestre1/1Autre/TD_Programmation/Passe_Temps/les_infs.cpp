#include <stdio.h>
#include <stdlib.h>

int main (void) {
	
	int nombre = 0;
	
	printf("1.Senegal ; 2.Mali ; 3.Niger\n\n");
	printf("Entrer l'indice du pays : ");
	scanf("%d", &nombre);
	
	switch (nombre) {
		case 1 : printf("T'es Senegalais mon frere");
		
		break;
		
		case 2 : printf("T'es Malien mon frere");
		break;
		
		case 3 : printf("T'es Nigerien mon frere");
		break;
	}
	
	
	return 0;
}
void nationnalite (){
	int age = 0;
	
	printf("Entrer ton age : ");
	scanf("%d", &age);
}
