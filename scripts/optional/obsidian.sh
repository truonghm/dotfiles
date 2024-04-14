#!/usr/bin/env sh

echo "🚩🚩🚩 Installing Obsidian"

# https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.12/obsidian_1.5.12_amd64.deb

cd /tmp
curl -L https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.12/obsidian_1.5.12_amd64.deb -o obsidian.deb
sudo dpkg -i obsidian.deb
