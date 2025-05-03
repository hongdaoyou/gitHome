#include <stdio.h>

void fun() {

    int a=10;
    int x=11;
    int y=22;
    int z=33;

    // int b = a=11 || a=22 && a=33;
    int b = (a=x) || (a=y) && (a=z);

    printf("%d %d\n", a, b);

}


int main() {
    fun();
}
