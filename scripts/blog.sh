#!/bin/bash

sleep 2

nix-env -iA nixpkgs.hugo

cd /root/site
tmux new-session -d -s hugo
tmux send-keys -t hugo "hugo server -D --bind "0.0.0.0" --appendPort=false -b "https://hahn1.one" " C-m
