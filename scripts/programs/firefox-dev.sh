#!/usr/bin/env sh

echo "🚩🚩🚩 Installing Firefox Developer Edition"

cd /tmp
curl -L https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US


sudo cp -rp firefox*.tar.bz2 $HOME/opt
sudo rm -rf firefox*.tar.bz2

cd $HOME/opt
sudo tar xjf firefox*.tar.bz2
sudo rm -rf firefox*.tar.bz2
sudo chown -R $USER /opt/firefox

touch ~/.local/share/applications/firefox_dev.desktop

echo "
[Desktop Entry]
Name=Firefox Developer Edition
GenericName=Web Browser
Exec=/opt/firefox/firefox %u
Terminal=false
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
Type=Application
Categories=Application;Network;Favorites;
# Actions=new-window;new-private-window;
# StartupWMClass="firefox-aurora", "Firefox Developer Edition"
StartupWMClass=firefox-aurora
# StartupNotify=true
MimeType=text/html;text/xml;application/xhtml_xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;

# [Desktop Action new-window]
# Name=Open a New Window
# Exec=/opt/firefox/firefox -new-window

# [Desktop Action new-private-window]
# Name=Open a New Private Window
# Exec=/opt/firefox/firefox -private-window
" >> ~/.local/share/applications/firefox_dev.desktop