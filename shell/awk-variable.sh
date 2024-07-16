#!/bin/bash


function fun() {
    a1=1111
    
    # 要传键值对,  取值,a1
    # echo '' | awk -v a1 '{print $a1; a1=11}'

    echo '' | awk -v a1=${a1} '{print a1; a1=11}'

    echo $a1;
}


fun

