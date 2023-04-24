#!/bin/bash
REPO=/var/www/html/back

cd $REPO
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet
export ASPNETCORE_ENVIRONMENT=Production
export PASSWORD=$(cat /etc/password.txt)
dotnet publish -c Release
sudo systemctl restart apache2
