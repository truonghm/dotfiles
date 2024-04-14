#!/usr/bin/env sh

echo "🚩🚩🚩 Installing kubectl"


sudo apt-get install -y apt-transport-https ca-certificates

curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.29/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
sudo chmod 644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg # allow unprivileged APT programs to read this keyring

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl


kubectl version --client