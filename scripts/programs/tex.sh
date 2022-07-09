
echo "📃 Installing Pandoc and related packages"
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

sudo apt install -y ./"$FILE"