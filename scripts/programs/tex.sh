
#!/usr/bin/env bash

echo "🚩🚩🚩 Installing Pandoc and related packages"

sudo apt-get install -y pandoc
sudo apt-get install -y texlive-latex-base
sudo apt-get install -y texlive-fonts-recommended

cd /tmp
VERSION=0.12.6-1
FILE=wkhtmltox_"$VERSION".focal_amd64.deb
cd /tmp

if [ -f "$FILE" ]; then
    echo "$FILE already exists."
else 
    wget https://github.com/wkhtmltopdf/packaging/releases/download/"$VERSION"/"$FILE"
fi

wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb

sudo apt install ./libssl1.1_1.1.0g-2ubuntu4_amd64.deb
sudo apt install -y ./"$FILE"