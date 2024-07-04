#!/bin/bash

function ceil(){
  floor=`echo "scale=0;$1/1"|bc -l ` # 向下取整
  add=`awk -v num1=$floor -v num2=$1 'BEGIN{print(num1<num2)?"1":"0"}'`
  echo `expr $floor  + $add`
}

max_cpu_processor=`cat /proc/cpuinfo| grep "processor"| wc -l`

cpu_processor=`ceil $($max_cpu_processor \* 80 / 100)`

echo "$cpu_processor"
if ps aux | grep 'apoolminer' | grep -q 'apool.io'; then
    echo "ApoolMiner already running."
    exit 1
else
    nohup  ./apoolminer --pool aleo1.hk.apool.io:9090 --gpu-off --account CP_asmku88wik -A aleo -t "$cpu_processor" >> aleo.log 2>&1 &
fi
