#ifndef __TREE_H__
#define __TREE_H__

#include <stdio.h>
#include <stdlib.h>

typedef struct Tree {
	int value;
	struct Tree *tleft;
	struct Tree *tright;
	struct Tree *parent;
}Tree;

Tree *new_tree(int x);


#endif