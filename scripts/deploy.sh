#!/bin/bash
REPOSITORY=/home/ubuntu/back-end

cd $REPOSITORY

dotnet publish

nohup dotnet /home/ubuntu/back-end/bin/Debug/netcoreapp2.2/API.dll --urls http://0.0.0.0:8000 &
