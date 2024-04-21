#!/usr/bin/env bash

echo "🚩🚩🚩 Installing ZSH and Ohmyzsh"
sudo apt install -y zsh

# Set zsh as default shell
chsh -s $(which zsh)

# Install oh my zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Install plugins

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --quiet https://github.com/truonghm/zsh-python-themes ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/python-themes