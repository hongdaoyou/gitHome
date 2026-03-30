#!/bin/bash

# set -x
# 转换成,unicode
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local txt=$1

    python -c "
s = '$txt'
result = ''.join(ch if ord(ch) < 128 else f'\\\\u{ord(ch):04x}' for ch in s)
print(result)
"


}


fun "$@"

