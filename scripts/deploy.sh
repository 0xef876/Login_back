#!/bin/bash
REPO=/home/ubuntu/back-end

cd $REPO
pkill dotnet
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet
export ASPNETCORE_ENVIRONMENT=Production
export PASSWORD=$(cat /etc/password.txt)
dotnet publish
