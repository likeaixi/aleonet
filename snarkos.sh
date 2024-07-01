#!/bin/bash

git clone --branch mainnet --single-branch https://github.com/AleoNet/snarkOS.git

cd snarkOS
git checkout tags/testnet-beta

./build_ubuntu.sh