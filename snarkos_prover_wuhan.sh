#!/bin/bash

nohup ./snarkos start --prover --metrics --private-key="$1" --verbosity=2 --network 1 --nodisplay --connect 111.46.8.35:4130 >>./snarkos-prover-`date +%Y-%m-%d`.log  2>&1 &