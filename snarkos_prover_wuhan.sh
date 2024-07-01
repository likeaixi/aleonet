#!/bin/bash

nohup snarkos start --prover --metrics --private-key=APrivateKey1zkpEKTcE8WJGDDLh1BzJPhwbnW3mzyBuAmrg7Cz6r8GYPEF --verbosity=2 --network 1 --nodisplay --connect 111.46.8.35:4130 >>./snarkos-`date +%Y-%m-%d`.log  2>&1 &