#!/bin/sh

baseDir=$(dirname $(realpath $0))
mkdir -p $baseDir/../data/

netTx=$(sar -n DEV 1 2 | grep Average: | grep eno1 | awk -F " " '{print $6}')

echo "$netTx"kB/s > $baseDir/../data/net-tx
