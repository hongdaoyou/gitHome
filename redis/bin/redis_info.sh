#!/bin/bash


function fun() {
    # 获取, 存储的目录
    redis_cli.sh  config get dbfilename
    echo "";

    redis_cli.sh  config get logfile
    echo "";
    
    redis_cli.sh  config get save
    echo "";

    redis_cli.sh  config get maxclients
    echo "";

    echo "有多少键:"
    redis_cli.sh  dbsize 
    echo "";

}

fun

