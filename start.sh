#!/bin/bash

SESSION_NAME="services"

# Start a new tmux session detached
tmux new-session -d -s $SESSION_NAME

echo "Waiting for tmux to be up."

sleep 2

tmux new-window -t $SESSION_NAME:1 -n dockerd "dockerd"
tmux new-window -t $SESSION_NAME:2 -n webdav "webdav -c ~/serverconf/webdav.yaml"
tmux new-window -t $SESSION_NAME:3 -n caddy "caddy run --config ~/serverconf/Caddyfile"

echo "Waiting for dockerd to be up."

sleep 10

cd ~/serverconf/filestash
docker compose up -d
cd ~

cd ~/serverconf/vaultwarden
docker compose up -d
cd ~

cd ~/serverconf/memos
docker compose up -d
cd ~

cd ~/serverconf/expenseowl
docker compose up -d
cd ~
