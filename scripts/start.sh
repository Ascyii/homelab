#!/bin/bash

docker network create caddy

cd /root/homelab/caddy
docker compose up -d
cd ~

cd /root/homelab/dockge
docker compose up -d
cd ~

~/homelab/scripts/blog.sh
