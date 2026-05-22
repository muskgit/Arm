#include<stdio.h>

int main(){
    int a,b,c,d;
    unsigned int e;

    a=100;
    b=a;

    scanf("%d %d",&a,&b);
    printf("a=%d,b=%d\n",a,b);

    c=a+b;
    printf("a+b=%d\n",c);

    c=a-b;
    printf("a-b=%d\n",c);

    c=a*b;
    printf("a*b=%d\n",c);

    c=a/b;
    printf("a/b=%d\n",c);

    return 0;
}