#include <stdio.h>

// 打印,二进制
void _print_bit(int a){

    if (a == 0) {
        // printf("0");
        return;
    } else {
        int b = a & 1;
        _print_bit(a >> 1);  // 先打印,后面的1. 再打印前面的
        printf("%d", b); 
    }
}

void print_bit(int a){
    if (a == 0) {
        printf("0\n");
    } else {
        _print_bit(a);
        printf("\n");
    }
}


// 获取第n位的数字
void getBit(int a, int n) {
    int ret = a >> (n-1) & 1;

    printf("%d\n", ret);
}

// 设置,1
void setBitOne(int a, int n) {
    int ret = 1 << (n-1) | a;

    print_bit(ret);
}

// 设置,0
void setBitZero(int a, int n) {
    int ret = ~(1 << (n-1)) & a;

    print_bit(ret);
}


void fun() {
    // int a = 0xaf12;
    // int a = 021;
    int a = 0b101001;
    // print_bit(a);

    // getBit(a, 4);

    // setBitOne(a, 20 );

    // setBitZero(a, 4 );


    // printf("\n");

}


int main() {
    fun();
}
