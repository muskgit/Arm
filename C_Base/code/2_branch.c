#include <stdio.h>

int main(int argc, char const *argv[])
{
    // goto
//     printf("goto 0\r\n");
//     goto label11;
//     printf("goto 1\r\n");
// label11:
//     printf("goto 2\r\n");

    // if-else
    if(argc > 1) {
        printf("argc is greater than 1\n");
    } else if(argc == 1) {
        printf("argc is equal to 1\n");
    } else {
        printf("argc is less than 1\n");
    }

    // // switch-case
    // switch(argc) {
    //     case 0:
    //         printf("argc is 0\n");
    //         break;
    //     case 1:
    //         printf("argc is 1\n");
    //         break;
    //     default:
    //         printf("argc is greater than 1\n");
    //         break;
    // }
    return 0;
}
