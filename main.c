#include <stdio.h>
int topla   (int,int);
int carp    (int,int);
int cikar   (int,int);
int bol     (int,int);

int main(void){
    int num, num2;
    printf  ("Enter two numbers: ");
    scanf_s ("%d %d", &num, &num2);

    printf  ("%d + %d = %d\n",num,num2,topla    (num,num2));
    printf  ("%d - %d = %d\n",num,num2,cikar    (num,num2));
    printf  ("%d * %d = %d\n",num,num2,carp     (num,num2));
    printf  ("%d / %d = %d\n",num,num2,bol      (num,num2));
    return 0;
}