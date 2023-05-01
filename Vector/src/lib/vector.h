#ifndef VECTOR_VECTOR_H
#define VECTOR_VECTOR_H

#include "vector_utils.h"
typedef struct vector Vector;

template(T) struct vector
{
    T *data;
    int i, length;

    void (*pushBack)(Vector *, T data);
    void (*pushFront)(Vector *, T data);
    void (*insert)(Vector *, T data, size_t index);
    void (*popBack)(Vector *);
    void (*clear)(Vector *);
    void (*delete)(Vector *, size_t index);
    void (*popFront)(Vector *);
    T(*getData)
    (Vector *, size_t index);
    int (*search)(Vector *, T data, funCompare);
};

Vector *init_Vector();

#endif // VECTOR_VECTOR_H