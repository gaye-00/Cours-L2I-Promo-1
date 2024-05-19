#include <stdio.h>

int main(void) {

	int Tab[5];
	int i;

	for(i = 0; i < 5; i++) {
		printf("Donner la valeur de Tab[%d] : ", i+1);
		scanf("%d", &Tab[i]);
	}

	int min = Tab[0], max = Tab[0];
	for(i = 0; i < 5; i++) {
		if(Tab[i] < min)
			min = Tab[i];
		if(Tab[i] > max)
			max = Tab[i];
	}

	printf("\n");
	printf("Le minimum est %d\n", min);
	printf("Le maximum est %d\n", max);


	return 0;
}