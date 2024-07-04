#!/bin/bash

max_cpu_processor="cat /proc/cpuinfo| grep "processor"| wc -l"

cpu_processor=`expr "$max_cpu_processor" \* 80 / 100`

if ps aux | grep 'apoolminer' | grep -q 'apool.io'; then
    echo "ApoolMiner already running."
    exit 1
else
    nohup  ./apoolminer --pool aleo1.hk.apool.io:9090 --gpu-off --account CP_asmku88wik -A aleo -t "$cpu_processor" >> aleo.log 2>&1 &
fi

