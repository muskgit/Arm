#include<stdio.h>

/**
 * 全局变量
 **/
char g_char_null;
char g_char_0 = 0;
char g_char_100 = 100;

short g_short_null;
short g_short_0 = 0;
short g_short_100 = 100;

int g_int_null;
int g_int_0 = 0;
int g_int_100 = 100;

unsigned char g_unsignedchar_null;
unsigned char g_unsignedchar_0 = 0;
unsigned char g_unsignedchar_100 = 100;

unsigned short g_unsignedshort_null;
unsigned short g_unsignedshort_0 = 0;
unsigned short g_unsignedshort_100 = 100;

unsigned int g_unsignedint_null;
unsigned int g_unsignedint_0 = 0;
static unsigned int g_unsignedint_100 = 100;

float g_float = 100.5;
double g_double = 100.6;

void func1(double d){

}

void func2(double d, float f, int i){

}

int main(){
    /**
     * 函数内全局变量
     **/
    static char I_char_null;
    static char I_char_0 = 0;
    static char I_char_100 = 100;

    static short I_short_null;
    static short I_short_0 = 0;
    static short I_short_100 = 100;

    static int I_int_null;
    static int I_int_0 = 0;
    static int I_int_100 = 100;

    static unsigned char I_unsignedchar_null;
    static unsigned char I_unsignedchar_0 = 0;
    static unsigned char I_unsignedchar_100 = 100;

    static unsigned short I_unsignedshort_null;
    static unsigned short I_unsignedshort_0 = 0;
    static unsigned short I_unsignedshort_100 = 100;

    static unsigned int I_unsignedint_null;
    static unsigned int I_unsignedint_0 = 0;
    static unsigned int I_unsignedint_100 = 100;

    static float I_float = 100.5;
    static double I_double = 100.6;

    I_int_null = 1000;
    I_char_0 = -100;
    g_unsignedchar_null = 254;
    g_char_0 = 128;
    g_unsignedshort_0 = 1000;

    printf("g_char %d %d %d\n", g_char_null, g_char_0, g_char_100);
    printf("g_short %d %d %d\n", g_short_null, g_short_0, g_short_100);
    printf("g_int %d %d %d\n", g_int_null, g_int_0, g_int_100);

    printf("g_unsignedchar %d %d %d\n", g_unsignedchar_null, g_unsignedchar_0, g_unsignedchar_100);
    printf("g_unsignedshort %d %d %d\n", g_unsignedshort_null, g_unsignedshort_0, g_unsignedshort_100);
    printf("g_unsignedint %d %d %d\n", g_unsignedint_null, g_unsignedint_0, g_unsignedint_100);

    printf("I_char %d %d %d\n", I_char_null, I_char_0, I_char_100);
    printf("I_short %d %d %d\n", I_short_null, I_short_0, I_short_100);
    printf("I_int %d %d %d\n", I_int_null, I_int_0, I_int_100);

    printf("I_unsignedchar %d %d %d\n", I_unsignedchar_null, I_unsignedchar_0, I_unsignedchar_100);
    printf("I_unsignedshort %d %d %d\n", I_unsignedshort_null, I_unsignedshort_0, I_unsignedshort_100);
    printf("I_unsignedint %d %d %d\n", I_unsignedint_null, I_unsignedint_0, I_unsignedint_100);

    printf("g_double %lf\n", g_double);
    func1(g_double);
    func2(g_double, I_float, g_unsignedint_100);
    printf("I_double %lf\n", I_double);
    printf("g_float %f\n", g_double);
    printf("I_float %f\n", I_float);

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