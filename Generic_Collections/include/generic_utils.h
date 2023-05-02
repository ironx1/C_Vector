#ifndef GENERIC_GENERIC_UTILS_H
#define GENERIC_GENERIC_UTILS_H
#include <stdlib.h>
#define isNullM(variable) if (variable == NULL)
#define memAllocM(type, size) (type*)malloc(sizeof(type)*(size))
typedef unsigned int u_int;
#endif //GENERIC_GENERIC_UTILS_H