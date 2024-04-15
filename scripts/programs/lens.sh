#!/usr/bin/env bash

echo "🚩🚩🚩 Installing Lens"

# Download the GPG key and save it in the correct directory
curl -fsSL https://downloads.k8slens.dev/keys/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/lens-archive-keyring.gpg

# Ensure the keyring file has the correct permissions
sudo chmod 644 /etc/apt/keyrings/lens-archive-keyring.gpg

# Add the repository to the system's list of sources
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/lens-archive-keyring.gpg] https://downloads.k8slens.dev/apt/debian stable main" | sudo tee /etc/apt/sources.list.d/lens.list > /dev/null

sudo apt update
sudo apt install lens -y