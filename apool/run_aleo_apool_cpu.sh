#!/bin/bash

# 获取 CPU 核心总数
cpu_cores=$(grep -c ^processor /proc/cpuinfo)

# 计算 80% 的核心数
cpu_cores_80=$(echo "$cpu_cores * 0.8" | bc)

# 取整，舍弃小数部分
cpu_cores_80=$(printf "%.0f" $cpu_cores_80)

echo "CPU 核心总数: $cpu_cores"
echo "80% 的 CPU 核心数: $cpu_cores_80"

if ps aux | grep 'apoolminer' | grep -q 'apool.io'; then
    echo "ApoolMiner already running."
    exit 1
else
    nohup  ./apoolminer --pool aleo1.hk.apool.io:9090 --gpu-off --account CP_asmku88wik -A aleo -t "$cpu_cores_80" >> aleo.log 2>&1 &
fi
