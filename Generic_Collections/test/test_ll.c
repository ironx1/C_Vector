#include "test_ll.h"
#include <stdio.h>
User *init_user(char *name, int age, char* userName, char* password){
    User *user = memAllocM(User, 1);
    user->name = name;
    user->age = age;
    user->userName = userName;
    user->password = password;
    user->friends = init_LinkedList();
    return user;
}

void showUserInfo(User *user){
    isNullM(user) return;
    printf("\nName      : %s\n", user->name);
    printf("Age         : %d\n", user->age);
    printf("Username    : %s\n", user->userName);
}

void showFriends(User *user){
    isNullM(user) return;
    isNullM(user->friends) return;
    Node *iter = user->friends->head;
    while (iter!=NULL)
    {
        showUserInfo(iter->data);
        iter = iter->next;
    }
}

void addFriend(User *me ,User *__friend){
    isNullM(__friend) return;
    me->friends->pushBack(me->friends, __friend);
}

int main(int argc, char const *argv[])
{
    LinkedList *miniGraph = init_LinkedList();
    miniGraph->insert(miniGraph, init_user("kaan", 23, "kaan99", "1234"),4);
    miniGraph->insert(miniGraph, init_user("ali", 22, "ali01", "1999"),1);
    miniGraph->insert(miniGraph, init_user("mehmet", 30, "mehmet21", "0101"),2);
    miniGraph->insert(miniGraph, init_user("ayse",21, "ayse12","xyz"),3);
    Node *iter = miniGraph->head;
    while (iter!=NULL)
    {
        showUserInfo(iter->data);
        iter = iter->next;
    }

    miniGraph->clear(miniGraph);
    free(miniGraph);
    return 0;
}
