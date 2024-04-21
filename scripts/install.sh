#!/usr/bin/env bash

# Copy dotfiles
bash $(pwd)/scripts/copy.sh

# Update Ubuntu and get standard repository programs
# sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Create temp folder to store installation files
sudo mkdir tmp || true

# Basics
install awscli
install curl
install git
install htop
install vim
install wget
install make
install tree
install fzf
install gthumb
install fonts-cascadia-code
install telegram-desktop
install vlc
install p7zip-full
install p7zip-rar
install tilix
install vlc
install graphviz
install psensor
install openssh-server
install jq
install gnome-shell-extension-manager
install neofetch
install geany

# install googler
# install ncdu
# install nnn
# https://github.com/sharkdp/bat
# install bat
# azure-cli
# studio3T: https://studio3t.com/knowledge-base/articles/how-to-install-studio-3t-on-linux/
# birdtray
# inkscape
# minikube
# obs-studio
# zoom

# Run all scripts in programs/
# for f in $(pwd)/scripts/programs/*.sh; do bash "$f" -H; done


# Other snap packages
sudo snap install datagrip --classic
# sudo snap install slack
sudo snap install gitkraken --classic
sudo snap install kolourpaint
sudo snap install whatsapp-for-linux

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove -y
sudo systemctl enable --now ssh 

# Limit asus laptop battery threshold
# For other laptops, explore the power_supply folder to see what is there
# there should be a BAT0 or BAT1 folder containing the charge_control_end_threshold utility
# (crontab -l ; echo "@reboot root echo 60 > /sys/class/power_supply/BAT1/charge_control_end_threshold")| crontab -
