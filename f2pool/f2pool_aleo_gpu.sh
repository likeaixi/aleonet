#!/bin/bash

# 获取第一个非本地网络接口的 IP 地址
ip_address=$(hostname -I | awk '{print $1}')

# 去掉 IP 地址中的点
ip_address_no_dots=$(echo $ip_address | tr -d '.')

# 打印处理后的 IP 地址
echo "IP 地址: $ip_address_no_dots"

nohup ./aleo-miner -u stratum+tcp://aleo-asia.f2pool.com:4400 -w hty2021.$ip_address_no_dots -d 0 >> ./aleo-miner.log 2>&1 &

