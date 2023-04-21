#!/bin/bash
REPO=/home/ubuntu/back-end

cd $REPO
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet

echo "Deploying code..."
dotnet publish
nohup dotnet /home/ubuntu/back-end/bin/Debug/netcoreapp2.2/publish/API.dll --urls http://0.0.0.0:8000 > /home/ubuntu/back-end/logs.txt 2>&1 &
pid=$!
while [ -e /proc/$pid ]; do sleep 1; done
echo "Deployment complete."
