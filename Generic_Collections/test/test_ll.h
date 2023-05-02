#ifndef GENERIC_TEST_LL_H
#define GENERIC_TEST_LL_H
#ifdef _WIN32
#include "..\include\LinkedList.h"
#else
#include "../include/LinkedList.h"
#endif //_WIN32

typedef struct user User;
struct user
{
    char *name;
    int age;
    char *userName;
    char *password;
    LinkedList *friends;
};

User *init_user(char *name, int age, char* userName, char* password);
void showUserInfo(User *user);
void showFriends(User *user);
void addFriend(User *me, User *__friend);
#endif // GENERIC_TEST_LL_H
