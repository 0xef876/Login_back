#!/bin/bash
REPO=/home/ubuntu/back-end

cd $REPO
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet

dotnet publish
nohup dotnet /home/ubuntu/back-end/bin/Debug/netcoreapp2.2/API.dll --urls http://0.0.0.0:8000 &
