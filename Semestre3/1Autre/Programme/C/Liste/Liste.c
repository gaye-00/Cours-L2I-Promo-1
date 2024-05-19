#include "Liste.h"

List new_list(void) {
		return NULL;
}

/*------------------------------------------------------------------*/

Bool is_empty_list(List li) {
	if(li == NULL)
		return true;

	return false;
}

/*------------------------------------------------------------------*/

int list_length(List li) {
	int size = 0;

	if(!is_empty_list(li))
		while(li != NULL) {
			size++;
			li = li->next;
		}

	return size;
}

/*------------------------------------------------------------------*/

void print_list(List li) {
	if(is_empty_list(li)) {
		printf("Rien a afficher la Liste est vide\n");
		return;
	}

	while(li != NULL) {
		printf("[%d]  ", li->value);
		li = li->next;
	}
	printf("\n");
}

/*------------------------------------------------------------------*/

List push_back_list(List li, int x) {
	ListElement *element;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Erreur : Probleme d'allocation dynamique\n");
		exit(EXIT_FAILURE);
	}

	element->value = x;
	element->next = NULL;

	if(is_empty_list(li))
		return element;

	ListElement *tmp = li;

	while(tmp->next != NULL)
		tmp = tmp->next;

	tmp->next = element;

	return li;
}

/*------------------------------------------------------------------*/

List push_front_list(List li, int x) {
	ListElement *element;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Erreur : Probleme d'allocation dynamique\n");
		exit(EXIT_FAILURE);
	}

	element->value = x;

	if(is_empty_list(li))
		element->next = NULL;
	else
		element->next = li;

	return element;
}

/*------------------------------------------------------------------*/

List pop_back_list(List li) {
	if(is_empty_list(li))
		return new_list();

	if(li->next == NULL) {
		free(li);
		li = NULL;

		return new_list();
	}

	ListElement *tmp = li;
	ListElement *before = li;

	while(tmp->next != NULL) {
		before = tmp;
		tmp = tmp->next;
	}

	before->next = NULL;
	free(tmp);
	tmp = NULL;

	return li;
}

/*------------------------------------------------------------------*/

List pop_front_list(List li) {
	if(is_empty_list(li))
		return new_list();

	ListElement *element;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Erreur : Probleme d'allocation dynamique\n");
		exit(EXIT_FAILURE);
	}

	element = li->next;

	free(li);
	li = NULL;

	return element;
}

/*------------------------------------------------------------------*/

List clear_list(List li) {
	if(is_empty_list(li))
		return new_list();

	while(li != NULL)
		li = pop_front_list(li);

	return new_list();
}

/*------------------------------------------------------------------*/