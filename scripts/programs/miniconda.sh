#!/bin/bash

echo "🐍 Installing Python/Miniconda3"
cd /tmp
wget https://repo.anaconda.com/miniconda/Miniconda3-py39_4.12.0-Linux-x86_64.sh
bash Miniconda3-py39_4.12.0-Linux-x86_64.sh -b -p $HOME/miniconda3