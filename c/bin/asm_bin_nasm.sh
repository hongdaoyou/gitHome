#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数 .asm"; exit 1;
    fi


    local fileName=$1

    local baseName=${fileName%.*}

    # echo $baseName;
    # exit
    # nasm -f elf32 a.asm -o a.o
    nasm -f elf32 $fileName -o ${baseName}.o

    ld -m elf_i386 ${baseName}.o -o $baseName

    ./${baseName}
}


fun "$@"

