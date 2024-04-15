#!/usr/bin/env bash

set -e

echo "🚩🚩🚩 Installing Firefox Developer Edition"

cd tmp
echo "Downloading Firefox Developer Edition"
sudo curl -L https://download.mozilla.org/\?product\=firefox-devedition-latest-ssl\&os\=linux64\&lang\=en-US --output firefoxdev.tar.bz2

echo "Extracting Firefox Developer Edition"
sudo mkdir -p $HOME/opt/
sudo rm -rf $HOME/opt/firefox*
sudo cp -rp firefox*.tar.bz2 $HOME/opt
sudo rm -rf firefox*.tar.bz2

cd $HOME/opt
sudo tar xjf firefox*.tar.bz2
sudo rm -rf firefox*.tar.bz2

firefox_path=$HOME/opt/firefox
firefox_bin_path=$firefox_path/firefox
sudo chown -R $USER $HOME/opt/firefox
sudo chmod +x $firefox_bin_path

echo "Creating a desktop entry for Firefox Developer Edition"
desktop_file=~/.local/share/applications/firefox_dev.desktop
[ ! -e $desktop_file ] || sudo rm $desktop_file
sudo touch $desktop_file

desktop_content="[Desktop Entry]
Name=Firefox Developer Edition
GenericName=Web Browser
Exec=$firefox_bin_path %u
Terminal=false
Icon=$firefox_path/browser/chrome/icons/default/default128.png
Type=Application
Categories=Network;WebBrowser;
# Actions=new-window;new-private-window;
StartupWMClass="firefox-aurora"
# StartupNotify=true
MimeType=text/html;text/xml;application/xhtml_xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;"

sudo sh -c "echo '$desktop_content' >> $desktop_file"

sudo chmod +x $desktop_file