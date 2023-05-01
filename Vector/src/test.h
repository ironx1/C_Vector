#if !defined(VECTOR_TEST_H)
#define VECTOR_TEST_H

typedef struct person Person;

struct person
{
    char *name;
    int age;

    void (*getData)(Person *person);
};

Person *init_Person(char *name, int age);

#endif // VECTOR_TEST_H
