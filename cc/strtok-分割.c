#include <stdio.h>
#include "common.h"

void fun() {
    // char s1[]="abc-=defff-cd";
    // char deli[] = "-=";

    char s1[] ="abc-=defff-cd"; // 不能是,静态字符串
    char *deli = "-="; // 可以是静态的   //是字符串,而非整型
    
    char *p = strtok(s1, deli);
    
    while (p) {
        printf("%s\n", p);

        p = strtok(NULL, deli);

    }
    // printf("%d\n", 1);

}


int main() {
    fun();
}
