#!/bin/bash
set -x

# eval 拼接执行字符串. 否则,特殊字符,被看做命令,执行了
function fun() {
    a=" ( "
    a+=" ls )"
    # $a
    # echo $a

    eval $a
}

function fun() {

    # $(echo "ls -l")
    a=$(ls -l)
    echo "$a";

    eval "ls -l"

}

fun

