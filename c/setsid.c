#include <stdio.h>
#include "common.h"

#include <unistd.h>

void fun() {

    int pid = fork();
    if (pid == 0) {
        // 生成,守护进程
        setsid();

        sleep(1000);
        
    } else {
        sleep(5);
    }

    printf("%d\n", 1);
}


int main() {
    fun();
}
