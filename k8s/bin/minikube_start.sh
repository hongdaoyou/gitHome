#!/bin/bash

# set -x
# minikube 的开启,关闭
function fun() {

    # minikube start
    minikube start --driver=docker


}


fun "$@"

