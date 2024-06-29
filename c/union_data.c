#include <stdio.h>

#define MIN(a,b) ((a)>(b)?(a):(b))

// 定义数据包, 包含,不同的数据格式
typedef struct {
    int type;

    union {
        struct {
            int a;
            int b;
        } s1;

        struct {
            float c;
            float d;
        } s2;
    }u;

} Data;

// 解析数据
void parse_data(Data *p) {
    switch (p->type) {
        case 1:
            printf("类型1 %d %d\n", p->u.s1.a, p->u.s1.b);
        break;
        
        case 2:
            printf("类型2 %f %f\n", p->u.s2.c, p->u.s2.d);
        break;
        default:
            printf("没有这个类型的数据包\n");
        break;;
    }

}


int main() {

    // 假设,数据包
    Data obj;

    obj.type = 1;
    obj.u.s1.a = 111;
    obj.u.s1.b = 2;

    obj.type = 2;
    obj.u.s2.c = 22.33;
    obj.u.s2.d = 22.44;

    parse_data(&obj);


}
