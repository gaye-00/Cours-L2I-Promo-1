#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void) {

	int aleatoire = 0, i;
	int random = rand();

	while(random < 4000) {
		printf("present\n");
		srand(time(NULL));
		random = rand();
	}
	printf("Rand = %d\n", &random);

	for(i = 0; i < 4; i++) {
		/*if(random == 0) {
			random = rand();
			srand(time(NULL));
		}*/
		
		aleatoire = aleatoire * 10 + random % 10;
		random /= 10;

	}
	printf("%d \n", aleatoire);
	

	return EXIT_SUCCESS;
}
