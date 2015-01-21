#!/bin/sh

baseDir=$(dirname $(realpath $0))
mkdir -p $baseDir/../data/

cpuIdle=$(sar -u 1 1 | grep Average | awk -F " " '{print $NF}' | awk '{ gsub(",","."); print }')
cpuUsage="$(echo "100 - $cpuIdle" | bc)"
cpuClock=$(lscpu | grep "CPU MHz" | awk -F " " '{print $3}')

echo "$cpuUsage"% > $baseDir/../data/cpu
