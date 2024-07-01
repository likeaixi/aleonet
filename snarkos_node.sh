#!/bin/bash

nohup ./snarkos start --prover --metrics --private-key="$1" --verbosity=1 --network 1 --nodisplay --node 0.0.0.0:4130 >>./snarkos-node-`date +%Y-%m-%d`.log  2>&1 &