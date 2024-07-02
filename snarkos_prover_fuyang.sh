#!/bin/bash

nohup ./snarkos start --prover --metrics --private-key="$1" --verbosity=2 --network 1 --nodisplay --bft 192.168.111.40:4130 >>./snarkos-prover-`date +%Y-%m-%d`.log  2>&1 &