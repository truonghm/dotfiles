#!/usr/bin/env sh

echo "🚩🚩🚩 Installing DBeaver"

FILE=dbeaver-ce_latest_amd64.deb
cd /tmp
if [ -f "$FILE" ]; then
    echo "$FILE already exists."
else 
    wget https://dbeaver.io/files/"$FILE"
fi

sudo dpkg -i "$FILE"
sudo apt-get install -f -y