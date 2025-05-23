#include <stdio.h>
#include "common.h"

void fun() {

    char s1[] = "abcdef";

    char sub1[] = "cde";

    // int a = strpos(s1, sub1); // 没有,strpos

    int a = strstr(s1, sub1) - s1;

    printf("%d\n", a);

}


int main() {
    fun();
}

