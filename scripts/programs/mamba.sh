#!/usr/bin/env sh

echo "🚩🚩🚩 Installing Hugo"

cd /tmp

curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh