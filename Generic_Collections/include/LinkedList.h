#ifndef GENERIC_LINKEDLIST_H
#define GENERIC_LINKEDLIST_H
#include "generic_utils.h"
typedef struct linked_list LinkedList;
typedef struct node Node;

struct node
{
    void *data;
    Node *prev, *next;
};

struct linked_list
{
    Node *head, *tail;
    int length;
    //functions
    void (*pushBack)(LinkedList*, void* data);
    void (*popBack)(LinkedList*);
    void (*pushFront)(LinkedList*, void* data);
    void (*popFront)(LinkedList*);
    void (*insert)(LinkedList*, void *data, u_int index);
    void (*delete)(LinkedList*, u_int index);
    void (*clear)(LinkedList*);
};

LinkedList *init_LinkedList();
#endif //GENERIC_LINKEDLIST_H