#include <stdio.h>
#include "common.h"

char * fun() {

    char *msg="abc"; 
    // return msg;
    return "msg";
}


int main() {
    char *msg = fun();
    printf("%s\n", msg);

}
