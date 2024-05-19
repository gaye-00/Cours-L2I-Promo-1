#include <stdio.h>
#include <stdlib.h>
#include "DList.h"

DList new_dlist(void) {
	
	return NULL;
}

/*------------------------------------------------------------------------------------------*/

Bool is_empty_dlist(DList li) {
	
	if(li == NULL)
		return true;

	return false;
}

/*------------------------------------------------------------------------------------------*/

int dlist_length(DList li) {
	
	if(is_empty_dlist(li))
		return 0;

	return li->length;
}

/*------------------------------------------------------------------------------------------*/

int dlist_first(DList li) {
	
	if(is_empty_dlist(li)) {
		printf("Il n'y a pas de premier valeur car la liste est vide\n");
		exit(EXIT_FAILURE);
	}
	return li->begin->value;
}

/*------------------------------------------------------------------------------------------*/


int dlist_last(DList li) {
	
	if(is_empty_dlist(li)) {
		printf("Il n'y a pas de dernier valeur car la liste est vide\n");
		exit(EXIT_FAILURE);
	}

	return li->end->value;
}

/*------------------------------------------------------------------------------------------*/

void print_dlist(DList li) {

	if(is_empty_dlist(li)) {
		printf("Rien a afficher la Dliste est vide\n");
		return;
	}

	DListNode *tmp = li->begin;

	while(tmp != NULL) {
		printf("[%d ]", tmp->value);
		tmp = tmp->next;
	}

	printf("\n");
}

/*------------------------------------------------------------------------------------------*/

DList insert_back_dlist(DList li, int x) {
	
	DListNode *element;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Erreur : Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	element->value = x;
	element->next = NULL;
	element->back = NULL;

	if(is_empty_dlist(li)) {
		li = malloc(sizeof(*li));

		if(li == NULL) {
			fprintf(stderr, "Erreur : Probleme d'allocation dynamique de la memoire\n");
			exit(EXIT_FAILURE);
		}

		li->length = 0;
		li->begin = element;
		li->end = element;
	}
	else {
		li->end->next = element;
		element->back = li->end;
		li->end = element;
	}

	li->length++;

	return li;
}

/*------------------------------------------------------------------------------------------*/

DList insert_front_dlist(DList li, int x) {
	
	DListNode *element;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Erreur : Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	element->value = x;
	element->next = NULL;
	element->back = NULL;

	if(is_empty_dlist(li)) {
		li = malloc(sizeof(*li));

		if(li == NULL) {
			fprintf(stderr, "Erreur : Probleme d'allocation dynamique de la memoire\n");
			exit(EXIT_FAILURE);
		}

		li->length = 0;
		li->begin = element;
		li->end = element;
	}
	else {
		li->begin->back = element;
		element->next = li->begin;
		li->begin = element;
	}

	li->length++;

	return li;
}

/*------------------------------------------------------------------------------------------*/

DList erase_back_dlist(DList li) {
	
	if(is_empty_dlist(li)) {
		printf("Rien a retirer la Dliste est vide\n");
		return new_dlist();
	}

	if(li->begin == li->end) {
		free(li);
		li = NULL;

		return new_dlist();
	}

	DListNode * tmp = li->end;

	li->end = li->end->back;
	li->end->next = NULL;
	tmp->next = NULL;
	tmp->back = NULL;


	free(tmp);
	tmp = NULL;

	li->length--;

	return li;
}

/*------------------------------------------------------------------------------------------*/

DList erase_front_dlist(DList li) {
	
	if(is_empty_dlist(li)) {
		printf("Rien a retirer la Dliste est vide\n");
		return new_dlist();
	}

	if(li->begin == li->end) {
		free(li);
		li = NULL;

		return new_dlist();
	}

	DListNode * tmp = li->begin;

	li->begin = li->begin->next;
	li->begin->back = NULL;
	tmp->next = NULL;
	tmp->back = NULL;


	free(tmp);
	tmp = NULL;

	li->length--;

	return li;
}

/*------------------------------------------------------------------------------------------*/

DList clear_dlist(DList li) {

	if(is_empty_dlist(li)) {
		printf("Rien a supprimer la Dliste est vide\n");
		return new_dlist();
	}

	while(!is_empty_dlist(li))
		li = erase_front_dlist(li);

	return new_dlist();
}

/*------------------------------------------------------------------------------------------*/
