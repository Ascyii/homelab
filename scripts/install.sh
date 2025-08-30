#!/bin/bash

ln -sf ~/conf/.bashrc ~/.bashrc
ln -sf ~/conf/scripts/start.sh ~/start.sh
ln -sf ~/conf/stacks ~/stacks

if [[ ! -d "$HOME/.config/nvim" ]]; then
	echo "Installing nvim config"
	git clone https://github.com/ascyii/nvim ~/.config/nvim
fi
