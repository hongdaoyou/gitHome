#include <stdio.h>
#include <string.h>

#include <stdarg.h>

// 格式化打印, debug( num, "abc",11, "d1",22 )
void debug(int num, ...) {
    // 初始化列表
    va_list list;

    // 参数的个数
    va_start(list, num);

    char *key;
    int value;
    // 遍历,列表
    for (int i=0; i < num/2; i++) {
        key = va_arg(list, char*);
        value = va_arg(list, int);

        printf("%s : %d ", key, value);
    }

    printf("\n");
    va_end(list);
}
