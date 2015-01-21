#!/bin/sh

baseDir=$(dirname $(realpath $0))
mkdir -p $baseDir/../data/

memFree=$(sar -r 1 1 | grep Average | awk -F " " '{print $2}')
memUsedPercent=$(sar -r 1 1 | grep Average | awk -F " " '{print $4}')

memFree="$(echo "$memFree" / 1024 | bc)"

echo "$memUsedPercent"%  > $baseDir/../data/mem
