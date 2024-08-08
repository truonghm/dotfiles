#!/usr/bin/env bash

cp -r $HOME/.config/tilix $(pwd)/.config/
cp -r $HOME/.fonts $(pwd)/
cp $HOME/.zshrc $(pwd)/profiles/.zshrc
cp $HOME/.vimrc $(pwd)/profiles/.vimrc
cp /etc/tlp.conf $(pwd)/profiles/tlp.conf