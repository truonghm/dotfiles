#!/usr/bin/env bash

echo "🚩🚩🚩 Installing Slack"

cd /tmp

wget https://downloads.slack-edge.com/releases/linux/4.36.140/prod/x64/slack-desktop-4.36.140-amd64.deb

sudo apt install slack-desktop-*.deb