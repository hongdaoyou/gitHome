#include <stdio.h>
// #include "common.h"

void fun() {
    // 二维字符数组,存储,字符串
    char a[][5] = { "abc12", "def", "igka" };

    // 指向可以强制,转换成,char*指针.然后,进行访问
    char *p = (char *)a;

    // 打印,底层数组的存储 . 其实是,依次排列 . \0,作为,终止符
    for (int i = 0; i < sizeof(a)/sizeof(char); i++) {
        printf("%d\n", p[i]);

    }

}


int main() {
    fun();
}
