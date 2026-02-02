#!/bin/bash

# set -x
# 测试时,运行, django web服务器
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local d1=${1}
    if [ $# -eq 0 ];then
        d1=.
    fi
    # ~/test/python/t1
    if [ ! -d $d1 ];then
        echo "目录,不存在"; exit 1;
    fi
    if [ ! -f $d1/manage.py ];then
        echo "manage.py 文件,不存在"; exit 1;
    fi

    source ~/test/python/venv1/bin/activate
    cd $d1
    python3 manage.py runserver

}


fun "$@"

