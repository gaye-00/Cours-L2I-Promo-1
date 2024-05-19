#ifndef __DList__H
#define __DList__H

	// Definition d'un Booléen
	typedef enum {
		false, //1
		true //0
	}Bool;

	// Defintion d'un maillon de la DListe
	typedef struct DListNode {
		int value;
		struct DListNode *next;
		struct DListNode *back;
	}DListNode;

	// Definition d'un DListe
	typedef struct DList {
		unsigned int length;
		struct DListNode *begin;
		struct DListNode *end;
	}*DList;

	// Les prototypes
	DList new_dlist(void);
	Bool is_empty_dlist(DList li);
	int dlist_length(DList li);
	int dlist_first(DList li);
	int dlist_last(DList li);
	void print_dlist(DList li);
	DList insert_back_dlist(DList li, int x);
	DList insert_front_dlist(DList li, int x);
	DList erase_back_dlist(DList li);
	DList erase_front_dlist(DList li);
	DList clear_dlist(DList li);

#endif