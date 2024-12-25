#!/bin/bash

# set -x
function gdb_backtrace() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local file=$1
    # echo 'run' | gdb $file 
    # gdb $file 

    # echo "y" | gdb -ex "run" -ex "bt" -ex "q"  a.out
    gdb -batch -ex "run" -ex "bt" -ex "quit" a.out

}


gdb_backtrace "$@"

