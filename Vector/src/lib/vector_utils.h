#if !defined(VECTOR_VECTOR_UTILS_H)
#define VECTOR_VECTOR_UTILS_H

#define template(typename) \
    typedef void *typename;

#define NULL ((void *)0)

#define isNullM(variable) if (variable == NULL)

#define compareNumM(type)                      \
    int compare_##type(void *obj1, void *obj2) \
    {                                          \
        if (*(type *)obj1 == *(type *)obj2)    \
            return 1;                          \
        return 0;                              \
    }

typedef int (*funCompare)(T, T);

int compare_str(void *obj1, void *obj2)
{
    int r = strcmp((char *)obj1, (char *)obj2);
    if (r == 0)
        return 1;
    return 0;
}
#endif // VECTOR_VECTOR_UTILS_H
