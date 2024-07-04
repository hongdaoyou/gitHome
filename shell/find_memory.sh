#!/bin/bash


ps aux | awk 'NR>1 {arr[$11]+=$6} END {for (i in arr) {print arr[i]/1024 " MB", i}}' | sort -nr | head -n 6

