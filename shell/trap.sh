#!/bin/bash


function fun() {

    trap fun1 SIGINT;

    while true;do
        sleep 1000; 
        echo '222'
    done; 
}

function fun1() {
    echo '111';
    return 0;
}

fun $@

