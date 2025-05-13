#include <stdio.h>
#include "common.h"

void fun() {


    // printf("%ld\n", 1e6);
    printf("%lf\n", 1e9); // 10的9次方

    printf("%lf\n", 1e-6);

    printf("%0.9f\n", 1e-9);

}


int main() {
    fun();
}
