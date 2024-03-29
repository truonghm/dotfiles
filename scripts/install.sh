#!/usr/bin/env sh

# Copy dotfiles
bash copy.sh

# Create temp folder to store installation files
sudo mkdir tmp

# Update Ubuntu and get standard repository programs
sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

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
# install googler
# install ncdu
# install nnn
# https://github.com/sharkdp/bat
# install bat


# Run all scripts in programs/
for f in programs/*.sh; do bash "$f" -H; done

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove -y

# Limit asus laptop battery threshold
# For other laptops, explore the power_supply folder to see what is there
# there should be a BAT0 or BAT1 folder containing the charge_control_end_threshold utility
# (crontab -l ; echo "@reboot root echo 60 > /sys/class/power_supply/BAT1/charge_control_end_threshold")| crontab -
