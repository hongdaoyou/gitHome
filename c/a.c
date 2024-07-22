#include "common.h"

#include <stdio.h>


void fun() {

    char buf[1024] = "ddd";
    debug(4, "aaa", 11, buf, 1234);
    
    // printf("%d\n", 1);

}

int main() {
    fun();
}
