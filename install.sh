#!/bin/bash

ln -sf ~/serverconf/.bashrc ~/.bashrc

sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon

nix-env -iA nixpkgs.neovim nixpkgs.gdu nixpkgs.docker nixpkgs.tmux nixpkgs.yazi nixpkgs.caddy nixpkgs.docker-compose nixpkgs.webdav nixpkgs.gnumake


