#include <stdio.h>
#include <stdlib.h>
/*--------------------------------------------------------------------------------------------------------*/
typedef struct ListCheval {
	char nom[15];
	unsigned int dossard;
	unsigned int temps;
	unsigned int classsement;
	struct ListCheval *next;
}ListCheval, *List;

typedef enum {
	false,
	true
}Bool;
/*--------------------------------------------------------------------------------------------------------*/
Bool is_empty_list(List li);
List cree_cheval(List li);
void affiche_cheval_list(List li);
List pop_front_list(List li);
List clear_list(List li);
List add_position(List li, List element);
/*--------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------*/

int main(void) {

	List mylistCheval = NULL;
	List on_element = NULL;
	int nombre, i;

	do {
		printf("Donnner le nombre de cheval : ");
		scanf("%d", &nombre);
	} while(nombre <= 0);

	for(i = 0; i < nombre; i++) {
		on_element = cree_cheval(on_element);
		mylistCheval = add_position(mylistCheval, on_element);
	}

	printf("\nApres triage de la liste des chevaux\n");
	affiche_cheval_list(mylistCheval);

	mylistCheval = clear_list(mylistCheval);
	free(on_element);
	affiche_cheval_list(mylistCheval);

	return 0;
}

/*--------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------*/

Bool is_empty_list(List li) {

	if(li == NULL)
		return true;
	
	return false;
}

/*--------------------------------------------------------------------------------------------------------*/

void affiche_cheval_list(List li) {

	if(is_empty_list(li)) {
		printf("Rien a afficher la liste des chevaux est vide\n");
		return;
	}

	printf("\n");
	while(!is_empty_list(li)) {
		printf("Nom : %s\n", li->nom);
		printf("Couleur Dossard : %u\n", li->dossard);
		printf("Le temps de Course : %d\n", li->temps);
		printf("Le classsement de Course : %d\n", li->classsement);

		li = li->next;
		printf("\n");
	}

	printf("\n");
	return;
}

/*--------------------------------------------------------------------------------------------------------*/

List cree_cheval(List li) {

	ListCheval *element;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	printf("\n");
	printf("Donnner le nom du cheval : ");
	scanf("%s", element->nom);

	printf("Donner le numero du dossart : ");
	scanf("%u", &element->dossard);

	do {
		printf("Donner le temps de course du cheval : ");
		scanf("%u", &element->temps);
	} while(element->temps <= 0);

	do {
		printf("Donner le classsement du cheval : ");
		scanf("%u", &element->classsement);
	} while(element->classsement <= 0);

	//element->next = li;

	return element;
}

/*--------------------------------------------------------------------------------------------------------*/

List pop_front_list(List li) {

	ListCheval *element;

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
		return NULL;

	while(!is_empty_list(li))
		li = pop_front_list(li);

	return NULL;
}

/*--------------------------------------------------------------------------------------------------------*/

List add_position(List li, List element) {


	if(is_empty_list(li)) {
		element->next = NULL;
		return element;
	}

	ListCheval *before;
	ListCheval *after;

	after = li;
	while(!is_empty_list(after) && (after->classsement < element->classsement)) {
		before = after;
		after = after->next;
	}

	if(after == li) {
		element->next = li;
		return element;
	}

	element->next = after;
	before->next = element;

	return li;
}

/*--------------------------------------------------------------------------------------------------------*/