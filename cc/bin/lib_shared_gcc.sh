#!/bin/bash

# 未测试
# 生成静态库名
# set -x
function ar_static() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi

    # 静态库名
    local libName=$1
    
    # 删除,第一个
    shift
    local srcFile="$@"

    --> 需要,将 .c 文件.转换成.o文件. 再删除掉

    ar csr $libName $srcFile
}


ar_static "$@"

