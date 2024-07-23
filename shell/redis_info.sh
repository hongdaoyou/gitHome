#!/bin/bash


function redis_info() {
    # 获取, 存储的目录
    redis-cli.sh  config get dbfilename
    echo "";

    redis-cli.sh  config get logfile
    echo "";
    
    redis-cli.sh  config get save
    echo "";

    redis-cli.sh  config get maxclients
    echo "";

    echo "有多少键:"
    redis-cli.sh  dbsize 
    echo "";

}


redis_info

