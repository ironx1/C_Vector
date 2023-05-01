#include "lib\vector.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "test.h"
void person_getData(Person *person)
{
    printf("name: %s\n", person->name);
    printf("age: %d\n", person->age);
}
Person *init_Person(char *name, int age)
{
    Person *person = (Person *)malloc(sizeof(Person));
    person->name = name;
    person->age = age;
    person->getData = person_getData;
    return person;
}

int main(int argc, char const *argv[])
{
    Vector *persons = init_Vector();
    persons->pushBack(persons, init_Person("Olivia", 23));
    persons->pushBack(persons, init_Person("Noah", 31));
    persons->pushFront(persons, init_Person("Oliver", 21));
    persons->pushBack(persons, init_Person("William",18));
    persons->pushBack(persons, init_Person("Isabella",20));
    persons->insert(persons, init_Person("Lucas",15), 0);
    persons->insert(persons, init_Person("Evelyn",25),6);
    persons->insert(persons, init_Person("Theodore",30),4);
    persons->pushBack(persons, init_Person("Charlotte",27));
    persons->pushFront(persons, init_Person("Liam",25));
    //person_getData(persons->getData(persons, 1));
    for (int i = 0; i < persons->length; i++)
    {
        printf("%d:\n",i);
        person_getData(persons->data[i]);
    }
    persons->clear(persons);
    return 0;
}
