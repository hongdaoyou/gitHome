#include "common.h"

#include <stdio.h>
#include <unistd.h>


void fun() {
    int i=0;
    
    while (1) {
        printf("%d\n",i++);
        sleep(1);
    }

}

int main() {
    fun();
}
