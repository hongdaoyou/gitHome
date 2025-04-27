#!/bin/bash

# set -x
# 多字符串的定义 遍历
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local a='''
aaa 111

  bb bb ss
ss

''';

b=$(cat <<EOF
222

  bb
ss

EOF
)

# echo "$a";
# echo  "$b";

for val in "$a"; do
    echo "$val"
    echo '---'
done

while IFS= read -r val; do
    echo "$val";
    echo '---';
done <<< "$a";

}


fun "$@"

