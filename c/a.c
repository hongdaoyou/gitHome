#include <stdio.h>
#include <stdlib.h>
// #include <string.h> 

#include "common.h"

void fun() {
    char *str = "1234ab";
    int a = atoi(str);

    char *endPtr;
    int b = strtol(str, &endPtr, 10);

    printf("%d %d\n", a, b );
    printf("%s\n", endPtr );

}

int main() {
    fun();
}
