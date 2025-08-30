#!/bin/bash

docker network create caddy

cd /root/conf/caddy
docker compose up -d
cd ~

cd /root/conf/dockge
docker compose up -d
cd ~
