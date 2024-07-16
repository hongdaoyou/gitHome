#!/bin/bash


function fun() {
    a1=1111
    
    echo ' abc ' | awk '{ print $1 }' | wc -c


    echo $a1;
}


fun

