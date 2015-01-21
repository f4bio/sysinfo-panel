#!/bin/sh

baseDir=$(dirname $(realpath $0))
mkdir -p $baseDir/../data/

netRx=$(sar -n DEV 1 2 | grep Average: | grep eno1 | awk -F " " '{print $5}')
netTx=$(sar -n DEV 1 2 | grep Average: | grep eno1 | awk -F " " '{print $6}')

echo "'"$netRx"kB/s' | '"$netTx"kB/s'"  > $baseDir/../data/net
