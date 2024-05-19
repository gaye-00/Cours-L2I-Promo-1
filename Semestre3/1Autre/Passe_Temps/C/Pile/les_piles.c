#include <stdio.h>
#include <stdlib.h>
/*---------------------------------------------------------------------------------------*/
typedef enum {
	false, //0
	true //1
}Boole;
/*---------------------------------------------------------------------------------------*/
typedef struct stackElement {
	int value;
	struct stackElement *next;
} stackElement, *stack;
/*---------------------------------------------------------------------------------------*/
stack new_stack(void);
Boole is_empty_stack(stack st);
stack insert_stack(stack st, int x);
void show_value(stack st);
stack remove_stack(stack st);
int length_stack(stack st);
int top_stack(stack st);
stack clear_stack(stack st);
/*---------------------------------------------------------------------------------------*/

int main(void) {
	
	stack sta = new_stack();
	int i, donnee, nombre;

	if(is_empty_stack(sta))
		printf("La pile est vide\n");

	else
		printf("La pile est non vide\n");

	do {
		printf("\nDonner le nombre d'element que tu veut inserer dans le pile : ");
		scanf("%d", &nombre);
		printf("\n");
	} while(nombre <= 0);

	for(i = 0; i < nombre; i++) {
		printf("%d : Donner la valeur a ajouter dans la pile : ", i+1);
		scanf("%d", &donnee);

		sta = insert_stack(sta, donnee);
	}

	printf("\nLa longueur de le pile est : %d\n", length_stack(sta));
	printf("La sommet de la pile est : %d\n", top_stack(sta));

	printf("\nLes valeurs dans la pile\n");
	show_value(sta);

	sta = remove_stack(sta);
	printf("\nApres suppression de la premier valeur de la pile\n");
	show_value(sta);

	clear_stack(sta);
	

	return 0;
}

/*---------------------------------------------------------------------------------------*/
stack new_stack(void) {
	return NULL;
}
/*---------------------------------------------------------------------------------------*/
Boole is_empty_stack(stack st) {
	if (st == NULL)
		return true;

	return false;
}
/*---------------------------------------------------------------------------------------*/
stack insert_stack(stack st, int x) {
	stackElement *element;

	element = malloc(sizeof(*element));

	if (element == NULL) {
		fprintf(stderr, "Probleme d'allocation de la memoire\n");
		exit(EXIT_FAILURE);
	}

	element->value = x;
	element->next = st;

	return element;
}
/*------------------------------------------------------------------------*/
void show_value(stack st) {

	if(is_empty_stack(st)) {
		printf("Rien a afficher la pile est vide\n");
		return;
	}

	while(!is_empty_stack(st)) {
		printf("[%d]\n", st->value);
		st = st->next;
	}
}
/*------------------------------------------------------------------------*/
stack remove_stack(stack st) {
	stackElement *element;

	if(is_empty_stack(st))
		return new_stack();

	element = st->next;
	free(st);

	return element;
}
/*------------------------------------------------------------------------*/
int length_stack(stack st) {
	int length = 0;

	while(!is_empty_stack(st)) {
		length++;
		st = st->next;
	}

	return length;
}
/*------------------------------------------------------------------------*/
int top_stack(stack st) {

	if(is_empty_stack(st)) {
		printf("\nLa pile est vide !\n");
		return -1;
	}

	return st->value;
}
/*------------------------------------------------------------------------*/
/* Cette fonction peut être simplifier en utilisant remove_stack 
stack clear_stack(stack st) {
	while(!is_empty_stack(st))
		st = remove_stack(st);

	return new_stack();

} */

stack clear_stack(stack st) {
	stackElement *element;

	if(is_empty_stack(st))
		return new_stack();

	element = st->next;
	free(st);

	return clear_stack(element);
}
/*------------------------------------------------------------------------*/