#!/bin/bash

# 累加数字
function sum_num() {
    # echo "11 22 -2 12 "  | awk 'BEGIN{a=0} { for(i=1; i<=$NF; i++) {  a+=$i; } } END{print a}' 

    awk 'BEGIN{a=0} { for(i=1; i<=$NF; i++) {  a+=$i; } } END{print a}' 

}

sum_num
