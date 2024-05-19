#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int nombre_aleatoire();
int chiffre_position(int, int, int);

int main(void) {

	int alea = nombre_aleatoire();
	printf("%d\n", alea);

	int c, p;
	do {
		printf("\nDonner un chiffre : ");
		scanf("%d", &c);
	} while((c - 9 > 0) || (c <= 0));

	do {
		printf("\nDonner la position du chiffre dans le nombre : ");
		scanf("%d", &p);
	} while((p - 4 > 0) || (p <= 0));

	if(chiffre_position(c, p, alea) == 2)
		printf("%d est dans %d a la position %d\n", c, alea, p);
	else if(chiffre_position(c, p, alea) == 1)
		printf("%d est dans %d mais pas dans la position %d\n", c, alea, p);
	else
		printf("%d n'est pas dans %d et aussi n'occupe pas la position %d\n", c, alea, p);

	return 0;
}

/*----------------------------------------------------------------------------*/

int nombre_aleatoire(void) {

	const int min = 1000, max = 9999;
	int n;

	srand(time(NULL));
	n = (rand() % (max - min + 1)) + min;
	return n;

}

/*----------------------------------------------------------------------------*/

int chiffre_position(int c, int p, int alea) {

	int pos = 0, chiffre_actu;
	for (int i = 0; i < p; ++i) {
		
	}

	return pos;
}

/**********************************************************************************/
/*int verification(int c, int n, int p) {

	int i = 4, pos = 0, trouve = 0;
	while(n != 0 && (!trouve || pos != p)) {
		if(n % 10 == c) {
			trouve = 1;
			pos = i;
		}
		i--;
		n = n / 10;
	}
	if(trouve) {
		if(pos == p)
			return 2;
		else
			return 1;
	}
	return 0;
}*/