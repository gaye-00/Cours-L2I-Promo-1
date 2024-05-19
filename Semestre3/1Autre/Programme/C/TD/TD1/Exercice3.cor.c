#include <stdio.h>
#include <stdlib.h>


int main(void) {

	int n;

	do {
		printf("Donner un entier entre 0 et 99 tel que le 1er chiffre != du 2eme chiffre : ");
		scanf("%d", &n);
	}	while(((n < 10) || (n > 99)) || ((n % 10) == (n / 10)));

	int m;
	do {
		m = (n % 10) * 10 + (n / 10);
		if(n >= m) {
			printf("%d - %d = %d\n", n, m, n-m);
			n = n - m;
		}
		else {
			printf("%d - %d = %d\n", m, n, m-n);
			n = m - n;
		}
	} while((n != 9) && (n != 0));
	// Tres important consernant le &&

	return 0;
}