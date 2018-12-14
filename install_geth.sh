#!/bin/bash

cwd=$(pwd)
cd ~
sudo apt-get install -y build-essential git golang
git clone https://github.com/ethereum/go-ethereum
cd go-ethereum
make geth
sudo cp ./build/bin/geth /usr/bin/geth
cd $cwd
