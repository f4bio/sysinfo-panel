#!/bin/sh

baseDir=$(dirname $(realpath $0))
mkdir -p $baseDir/../data/

netRx=$(sar -n DEV 1 2 | grep Average: | grep eno1 | awk -F " " '{print $5}')

echo "$netRx"kB/s  > $baseDir/../data/net-rx
