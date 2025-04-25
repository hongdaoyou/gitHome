#!/bin/bash

# set -x
# 查看,系统日志
function fun() {

    sudo tail -f /var/log/nginx/error.log
}

fun "$@"

