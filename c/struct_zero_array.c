#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// 定义数据包, 包含,不同的数据格式
typedef struct {
    int type;
    int len;
    
    char buf[0];

} Data;



int main() {

    Data obj;

    char buf[20] = "I am hdy"; // 假设读取到的数据
    obj.len = strlen(buf)+1;

    // 申请内存
    Data *p = (Data *)malloc( obj.len + sizeof(Data));
    // 拷贝过去
    strcpy(p->buf, buf);

    printf("%s %ld\n", p->buf, sizeof(p));

}

