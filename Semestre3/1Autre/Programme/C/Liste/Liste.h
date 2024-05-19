#ifndef __LISTE__H__
#define __LISTE__H__

#include <stdio.h>
#include <stdlib.h>

typedef enum {
	false, //0
	true //1
}Bool;

typedef struct ListElement {
	int value;
	struct ListElement *next;
}ListElement, *List;

List new_list(void);
Bool is_empty_list(List li);
int list_length(List li);
void print_list(List li);
List push_back_list(List li, int x);
List push_front_list(List li, int x);
List pop_back_list(List li);
List pop_front_list(List li);
List clear_list(List li);

#endif