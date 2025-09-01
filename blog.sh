#!/bin/bash

nix-env -iA nixpkgs.hugo

cd ~/site

tmux new-session -d -s hugo
tmux send-keys -t hugo "hugo server -D --bind "0.0.0.0" --appendPort=false -b "https://hahn1.one" " C-m
