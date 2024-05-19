#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

typedef struct ListElement {
	int value;
	struct ListElement *next;
}ListElement, *List;

bool is_empty_list(List li);
List new_list(void);
List pop_front_list(List li);
List clear_list(List li);
void show_list(List li);
int alea_number(void);
List push_front_list(List li, int);
List create_list_alea(List li, int);
int sum_number(List li);
List put_minus_on(List li, int);
List pass_negative(List li, int);
List delete_element_threshold(List li, int, int);
List duplicate_element(List li, int);


int main(void) {

	int nb;

	do {
		printf("Donner le nombre de valeur de la liste : ");
		scanf("%d", &nb);
	} while(nb <= 0);

	List mylist = NULL;

	mylist = create_list_alea(mylist, nb);
	show_list(mylist);

	show_list(mylist);
	printf("La somme des elements de la liste est %d\n", sum_number(mylist));

	printf("\nApres avoir mis -1 a la position %d\n", nb/2);
	mylist = put_minus_on(mylist, nb);
	show_list(mylist);

	int seuil;

	printf("Donner le seuil des valeurs : ");
	scanf("%d", &seuil);

	mylist = pass_negative(mylist, seuil);
	show_list(mylist);

	int valeur;

	printf("Diplication des elements qui sont egaux a valeur\n");
	printf("Donner la valeur : ");
	scanf("%d", &valeur);

	printf("\nAffichage de la liste apres diplication\n");
	mylist = duplicate_element(mylist, valeur);
	show_list(mylist);

	int seuil_haut, seuil_bas;

	printf("Suppression des elements qui sont entre les seuils donnes\n");
	do {
		printf("Donner le seuil bas : ");
		scanf("%d", &seuil_bas);

		printf("Donner le seuil heut : ");
		scanf("%d", &seuil_haut);
	} while(seuil_haut < seuil_bas);

	printf("\nAffichage des elements apres suppression\n");
	mylist = delete_element_threshold(mylist, seuil_bas, seuil_haut);
	show_list(mylist);

	mylist = clear_list(mylist);
	show_list(mylist);

	return 0;
}

/*--------------------------------------------------------------------------------------------------------*/

bool is_empty_list(List li) {

	if(li == NULL)
		return true;

	return false;
}

/*--------------------------------------------------------------------------------------------------------*/

List new_list(void) {

	return NULL;
}

/*--------------------------------------------------------------------------------------------------------*/

void show_list(List li) {

	if(is_empty_list(li)) {
		printf("Rien a afficher la liste est vide !\n");
		return;
	}

	while(!is_empty_list(li)) {
		printf("%d  ", li->value);
		li = li->next;
	}

	printf("\n\n");
	return;
}

/*--------------------------------------------------------------------------------------------------------*/

List create_list_alea(List li, int n) {

	ListElement *element;
	int i;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	// Very importante(rand() % 100);
	element = li;

	srand(time(NULL));
	for(i = 0; i < n; i++) {
		element = push_front_list(element, alea_number());
	}

	return element;
}

/*--------------------------------------------------------------------------------------------------------*/

int alea_number(void) {

	return (rand() % 100);
}

/*--------------------------------------------------------------------------------------------------------*/

List push_front_list(List li, int x) {

	ListElement *element;
	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	element->value = x;
	element->next = li;

	return element;

}
/*--------------------------------------------------------------------------------------------------------*/

List pop_front_list(List li) {

	ListElement *element;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	element = li->next;

	free(li);
	li = NULL;

	return element;
}

/*--------------------------------------------------------------------------------------------------------*/

List clear_list(List li) {

	if(is_empty_list(li))
		return new_list();

	while(!is_empty_list(li))
		li = pop_front_list(li);

	return new_list();
}

/*--------------------------------------------------------------------------------------------------------*/

int sum_number(List li) {

	int somme = 0;

	while(!is_empty_list(li)) {
		somme += li->value;
		li = li->next;
	}

	return somme;
}

/*--------------------------------------------------------------------------------------------------------*/

List put_minus_on(List li, int n) {

	ListElement *element = li;

	int i;
	for(i = 1; i < n / 2; i++)
		element = element->next;

	element->value = -1;

	return li;
}

/*--------------------------------------------------------------------------------------------------------*/

List pass_negative(List li, int val) {

	ListElement *element = li;

	while(!is_empty_list(element)) {
		if(element->value < val)
			element->value = -21;
		//element->value = element->value * (-1);

		element = element->next;
	}

	return li;
}

/*--------------------------------------------------------------------------------------------------------*/

List delete_element_threshold(List li, int val1, int val2) {

	if(is_empty_list(li)) {
		printf("La liste est vide\n");
		return new_list();
	}

	ListElement *element = li;
	ListElement *tmp;

	tmp = malloc(sizeof(*tmp));

	if(tmp == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	tmp = NULL;

	while(!is_empty_list(element)) {
		if((element->value < val1) || (element->value > val2)) {
			tmp = push_front_list(tmp, element->value);
		}

		element = element->next;
	}

	clear_list(li);
	return tmp;
}

/*--------------------------------------------------------------------------------------------------------*/

List duplicate_element(List li, int val) {

	ListElement *element = li;
	ListElement *after = li;

	while(!is_empty_list(element)) {
		if(element->value == val)
			after = push_front_list(after, element->value);

		element = element->next;
	}

	li = after;

	return li;
}