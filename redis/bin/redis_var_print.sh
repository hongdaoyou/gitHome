#!/bin/bash

# 打印,redis变量的值
function fun() {
    if [ $# -eq 0 ];then
        echo "请输入,参数"; exit 1;
    fi

    local ch=$1
    local ret=$(redis_cli.sh type ${ch} )
    # echo $ret

    case $ret in
        "string")
            redis_cli.sh get "$ch"
        ;;
        "set")
            redis_cli.sh smembers "$ch"
        ;;

        "zset")
            redis_cli.sh zrange "$ch" 0 -1 withscores
        ;;

        "list")
            redis_cli.sh lrange "$ch" 0 -1
        ;;
        "hash")
            redis_cli.sh hgetall "$ch"
        ;;
        
        "*")
            echo $ret;
        ;;
    esac
}


fun $1

