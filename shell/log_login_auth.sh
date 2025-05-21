#!/bin/bash

# set -x
# 查看,认证日志 登陆
function fun() {

    tail -f /var/log/auth.log -n 100 | grep systemd-logind
}

fun "$@"

