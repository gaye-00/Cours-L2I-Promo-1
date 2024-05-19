#include <stdio.h>
#include <stdlib.h>

int main(){
	int nombre, reste = 0;
	
	printf("Entrer un nombre : ");
	scanf("%d",&nombre);
	
	while (nombre != 0) {
		reste = nombre % 10;
		printf("%d\n",&reste);
		nombre = nombre / 10;
	}
}
