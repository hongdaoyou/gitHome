#include "common.h"

#include <stdio.h>


void fun() {

   int a,b;
   a = (b=10);

    printf("%d %d", a, b);
}

int main() {
    fun();
}
