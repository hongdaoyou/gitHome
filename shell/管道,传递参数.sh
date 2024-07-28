#!/bin/bash

# ./a.sh | ./a1.sh  管道的传递

function fun() {
    echo '11'
    
    sleep 2
    echo "111";
    sleep 3

    echo "222";
}

fun

# a1.sh
function fun2() {
    echo "I init"
        read a;
#    a=$(cat)
    echo "A1:"$a
}


