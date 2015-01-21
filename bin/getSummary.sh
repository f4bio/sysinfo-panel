#!/bin/sh

baseDir=$(dirname $(realpath $0))

$baseDir/getCPU.sh &
$baseDir/getMem.sh &
$baseDir/getNetRx.sh &
$baseDir/getNetTx.sh &

cpu=$(< $baseDir/../data/cpu)
mem=$(< $baseDir/../data/mem)
rx=$(< $baseDir/../data/net-rx)
tx=$(< $baseDir/../data/net-tx)

echo "cpu "$cpu" | mem "$mem" | rx "$rx" | tx "$tx""
#cat $baseDir/../summary
