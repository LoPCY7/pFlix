#!/bin/bash

cd ~/pFlix/
docker-compose restart app
cd Scripts
./restartProxyServer.sh