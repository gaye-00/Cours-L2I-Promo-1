#include "list.h"

int main(void) {

 	ListElement *mylist = new_list();
 	int nombre;

 	do {
 		printf("Donner le nombre d'elements de la liste : ");
 		scanf("%d", &nombre);
 	} while(nombre < 0);

 	int value;

 	for (int i = 0; i < nombre; ++i) {
 		printf("Donner la valeur : ");
 		scanf("%d", &value);

 		mylist = push_back_list(mylist, value);
 	}

 	print_list(mylist);

 	printf("Donner l'element a supprimer apres : ");
 	scanf("%d", &value);

 	mylist = del_after_element(mylist, value);
 	print_list(mylist);

 	mylist = clear_list(mylist);

	return 0;
}