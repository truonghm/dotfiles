#!/usr/bin/env bash

echo "🚩🚩🚩 Installing Mamba"

cd /tmp

curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh