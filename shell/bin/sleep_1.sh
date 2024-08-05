#!/bin/bash

# 运行,n个进程,跑满cpu


function sleep_1() {
    local i=0;

    while [ true ];do
        echo $i;
        let i=i+1;
        sleep 1;
    done;
}

sleep_1
