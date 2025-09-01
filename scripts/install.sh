#!/bin/bash

ln -sf ~/homelab/.bashrc ~/.bashrc
ln -sf ~/homelab/scripts/start.sh ~/start.sh
ln -sf ~/homelab/stacks ~/stacks

if [[ ! -d "$HOME/.config/nvim" ]]; then
	echo "Installing nvim config"
	git clone https://github.com/ascyii/nvim ~/.config/nvim
fi
