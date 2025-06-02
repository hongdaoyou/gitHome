#!/bin/bash
source common.sh

# set -x

# 搜索,某个内容. 并且,排除一些目录. 并且,必须同时包含
function fun() {
    if [ $# -lt 1 ];then
        echo "参数,不够"; exit 1;
    fi

    # 不用匹配的
    local noMatchDir=("${noMatchDir[@]}")

    # echo ${#noMatchDir}

    local excludeStr;
    for file in ${noMatchDir[@]};do
        excludeStr+=" --exclude-dir $file ";
        # echo $file
    done

    local reStr='';
    for s1 in $@; do
        # echo $s1
        reStr+="(?=.*${s1})"
        # echo "$reStr";
        # echo "(?=.*${s1})";

    done

    # echo "$reStr";

    # set -x
    grep  -I -r ${excludeStr}  -P "$reStr" .

    # set +x

}

fun $@

