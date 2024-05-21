#!/usr/bin/env bash

cp -r $(pwd)/.config ${HOME}
cp -r $(pwd)/.fonts ${HOME}

cp $(pwd)/profiles/.zshrc ${HOME}
cp $(pwd)/profiles/.vimrc ${HOME}