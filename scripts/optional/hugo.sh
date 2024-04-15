#!/usr/bin/env bash

echo "🚩🚩🚩 Installing Hugo"

VERSION=0.101.0
FILE=hugo_"$VERSION"_Linux-64bit.deb
cd /tmp
if [ -f "$FILE" ]; then
    echo "$FILE already exists."
else 
    wget https://github.com/gohugoio/hugo/releases/download/v"$VERSION"/"$FILE"
fi

sudo dpkg -i "$FILE"
sudo apt-get install -f -y

hugo version