#include <stdio.h>
#include <stdlib.h>

// 比较
int compare(const void *a, const void *b) {
    return *(int *)a - *(int *)b;
    // return  *(int *)b - *(int *)a ;
}

void fun() {

    int a[] = { 11, 33, 22, 44 };
    // qsort(a);
    int n = sizeof(a)/sizeof(a[0]);
    
    // 排序
    qsort(a,n, sizeof(int),compare );

    // 打印
    for (int i=0; i< n;i++) {
        printf("%d\n", a[i]);
    }
    // printf("%d\n", 1);

}


int main() {
    fun();
}
