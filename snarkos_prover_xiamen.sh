#!/bin/bash

nohup snarkos start --prover --metrics --private-key=APrivateKey1zkpEKTcE8WJGDDLh1BzJPhwbnW3mzyBuAmrg7Cz6r8GYPEF --verbosity=1 --network 1 --nodisplay --connect 192.168.0.52:4130 >>./snarkos-`date +%Y-%m-%d`.log  2>&1 &