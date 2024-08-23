#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local file="$@"
    # run-cpp.sh a.cpp  A1.pb.cc  -lprotobuf -pthread

    run-cpp.sh "$file" -lprotobuf -pthread

}


fun "$@"

