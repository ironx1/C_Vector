#ifdef _WIN32
#include "..\include\LinkedList.h"
#else
#include "../include/LinkedList.h"
#endif

static Node *init_Node(void *data){
    Node *node = memAllocM(Node, 1);
    isNullM(node) return NULL;
    node->data = data;
    node->prev = node->next = NULL;
    return node;
}

static void linkedList_createNode(LinkedList *ll, void *data){
    isNullM(ll) return NULL;
    isNullM(ll->head){
        ll->head = init_Node(data);
        ll->tail = ll->head;
        ll->length++;
    }
}

static void linkedList_pushBack(LinkedList *ll, void *data){
    isNullM(ll) return;
    isNullM(ll->head) {
        linkedList_createNode(ll, data);
        return;
    }
    ll->tail->next = init_Node(data);
    isNullM(ll->tail->next) return;
    ll->tail->next->prev = ll->tail;
    ll->tail = ll->tail->next;
    ll->length++;
}

static void linkedList_popBack(LinkedList *ll){
    isNullM(ll) return;
    isNullM(ll->tail) return;
    Node *tmp = ll->tail;
    isNullM(ll->tail->prev){
        free(tmp->data);
        free(tmp);
        ll->tail = NULL;
        return;
    }
    ll->tail = ll->tail->prev;
    ll->tail->next = NULL;
    free(tmp->data);
    free(tmp);
    ll->length--;
}

static void linkedList_pushFront(LinkedList *ll, void *data){
    isNullM(ll) return;
    isNullM(ll->head) {
        linkedList_createNode(ll, data);
        return;
    }
    ll->head->prev = init_Node(data);
    isNullM(ll->head->prev) return;
    ll->head->prev->next = ll->head;
    ll->head = ll->head->prev;
    ll->length++;
}

static void linkedList_popFront(LinkedList *ll){
    isNullM(ll) return;
    isNullM(ll->head) return;
    Node *tmp = ll->head;
    isNullM(ll->head->next){
        free(tmp->data);
        free(tmp);
        ll->head = NULL;
        return;
    }
    ll->head = ll->head->next;
    ll->head->prev = NULL;
    free(tmp->data);
    free(tmp);
    ll->length--;
}

static void linkedList_insert(LinkedList *ll, void* data, u_int index){
    isNullM(ll) return;
    isNullM(ll->head){
        linkedList_createNode(ll, data);
        return;
    }
    if(index > ll->length || index < 0) return;
    if(index == 0) ll->pushFront(ll, data);
    else if(index == ll->length) ll->pushBack(ll, data);
    else{
        Node *iter = ll->head;
        int counter = 0;
        while (iter!=NULL)
        {
            counter++;
            if(counter == index){
                Node *newNode = init_Node(data);
                isNullM(newNode) break;
                newNode->next = iter->next;
                newNode->prev = iter;
                iter->next = newNode;
                newNode->next->prev = newNode;
                ll->length++;
                break;
            }
            iter = iter->next;
        }
    }
}

static void linkedList_delete(LinkedList *ll, u_int index){
    isNullM(ll) return;
    isNullM(ll->head) return;
    if(index >= ll->length || index < 0) return;
    if(index == 0) ll->popFront(ll);
    else if(index == ll->length-1) ll->popBack(ll);
    else{
        Node *iter = ll->head;
        int counter=0;
        while (iter!=NULL)
        {
            if(index == counter){
                Node *tmp = iter;
                iter->prev->next = iter->next;
                iter->next->prev = iter->prev;
                tmp->next = tmp->prev = NULL;
                free(tmp->data);
                free(tmp);
                tmp = NULL;
                ll->length--;
                break;
            }
            counter++;
            iter = iter->next;
        }
    }
}

static void linkedList_clear(LinkedList *ll){
    isNullM(ll) return;
    isNullM(ll->head) return;
    Node *iter = ll->head;
    Node *tmp = NULL;
    while (iter!=NULL)
    {
        tmp = iter;
        iter = iter->next;
        tmp->prev = tmp->next = NULL;
        free(tmp->data);
        free(tmp);
    }
    ll->head = ll->tail = NULL;
    ll->length = 0;
}

LinkedList *init_LinkedList(){
    LinkedList *linkedList = memAllocM(LinkedList, 1);
    isNullM(linkedList) return NULL;
    linkedList->head = linkedList->tail = NULL;
    linkedList->length = 0;

    linkedList->pushBack = linkedList_pushBack;
    linkedList->popBack = linkedList_popBack;
    linkedList->pushFront = linkedList_pushFront;
    linkedList->popFront = linkedList_popFront;
    linkedList->insert = linkedList_insert;
    linkedList->delete = linkedList_delete;
    linkedList->clear = linkedList_clear;
    return linkedList;
}