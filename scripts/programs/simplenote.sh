#!/usr/bin/env bash

echo "🚩🚩🚩 Installing SimpleNote"

sudo apt-get install jq

REPO="Automattic/simplenote-electron"
VERSION=$(wget -q -O- https://api.github.com/repos/${REPO}/releases/latest | jq -r '.name')

FILE=Simplenote-linux-"$VERSION"-amd64.deb
cd /tmp
if [ -f "$FILE" ]; then
    echo "$FILE already exists."
else 
    wget https://github.com/"$REPO"/releases/download/v"$VERSION"/"$FILE"
fi

sudo dpkg -i "$FILE"
sudo apt-get install -f -y
