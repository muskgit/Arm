#include<stdio.h>

struct TestStruct
{
    unsigned long a;
    unsigned long b;
    unsigned long c;
};

TestStruct testFunction(TestStruct test, int argc)
{
    TestStruct result;
    result.a = test.a + 1 * argc;
    result.b = test.b + 2 * argc;
    result.c = test.c + 3 * argc;
    return result;
}
int main(int argc, char const *argv[])
{
    TestStruct test;
    test.a = 1;
    test.b = 2;
    test.c = 3;
    TestStruct result = testFunction(test, argc);
    printf("%lu, %lu, %lu\n", result.a, result.b, result.c);
    return 0;
}
