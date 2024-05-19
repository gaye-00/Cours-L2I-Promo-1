#include "queue.h"

Bool is_empty_queue(void) {
	if((first == NULL) && (last == NULL))
		return true;

	return false;
}

/*----------------------------------------------------------------------------------*/

int queue_length(void) {
	return nb_elements;
}

/*----------------------------------------------------------------------------------*/

int queue_first(void) {
	if(is_empty_queue()) {
		printf("Il n'y à pas de firt value car la File est vide\n");
		exit(EXIT_FAILURE);
	}

	return first->value;
}

/*----------------------------------------------------------------------------------*/

int queue_last(void) {
	if(is_empty_queue()) {
		printf("Il n'y à pas de last value car la File est vide\n");
		exit(EXIT_FAILURE);
	}

	return last->value;
}

/*----------------------------------------------------------------------------------*/

void print_queue(void) {
	if(is_empty_queue()) {
		printf("Rien à afficher la File est vide\n");
		return;
	}

	QueueElement *tmp = first;

	while(tmp != NULL) {
		printf("[%d] ", tmp->value);
		tmp = tmp->next;
	}
	printf("\n");
}

/*----------------------------------------------------------------------------------*/

void push_queue(int x) {
	QueueElement *element;

	element = malloc(sizeof(*element));

	if(element == NULL) {
		fprintf(stderr, "Probleme d'allocation dynamique de la memoire\n");
		exit(EXIT_FAILURE);
	}

	element->value = x;
	element->next = NULL;

	if(is_empty_queue()) {
		first = element;
		last = element;
	}
	else {
		last->next = element;
		last = element;
	}

	nb_elements++;
}

/*----------------------------------------------------------------------------------*/

void pop_queue(void) {
	if(is_empty_queue()) {
		printf("Rien à retirer la File est deja vide\n");
		return;
	}

	QueueElement *tmp = first;

	if(first == last) {
		first = NULL;
		last = NULL;
	}
	else
		first = first->next;

	free(tmp);

	nb_elements--;
}

/*----------------------------------------------------------------------------------*/

void clear_queue(void) {
	if(is_empty_queue()) {
		printf("Rien à nettoyer la File est deja vide\n");
		return;
	}

	while(!is_empty_queue())
		pop_queue();
}

/*----------------------------------------------------------------------------------*/