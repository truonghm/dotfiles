#!/bin/bash

echo "🐍 Installing Python/Miniconda3"

FILE=Miniconda3-py39_4.12.0-Linux-x86_64.sh
cd /tmp
if [ -f "$FILE" ]; then
    echo "$FILE already exists."
else 
    wget https://repo.anaconda.com/miniconda/"$FILE"
fi

bash "$FILE" -b -p $HOME/miniconda3