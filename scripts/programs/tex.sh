
echo "🐍 Installing Pandoc and related packages"
sudo apt-get install -y pandoc
sudo apt-get install -y texlive-latex-base
sudo apt-get install -y texlive-fonts-recommended

cd /tmp
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb
sudo apt install -y ./wkhtmltox_0.12.6-1.focal_amd64.deb