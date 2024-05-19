#ifndef __TREE_H__
#define __TREE_H__

	#include <stdio.h>
	#include <stdlib.h>

	typedef struct TreeElement {
		int value;
		struct TreeElement *sad;
		struct TreeElement *sag;
	}TreeElement, *Tree;

	Tree new_tree(int x);
	void clear_tree(Tree tr);
	Tree add_tree(Tree tr, int x);
	void print_tree(Tree tr);

#endif
