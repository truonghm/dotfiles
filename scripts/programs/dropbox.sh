#!/usr/bin/env bash

echo "🚩🚩🚩 Installing Dropbox"


cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

~/.dropbox-dist/dropboxd
