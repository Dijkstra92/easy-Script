#!/bin/sh

# Check if Teams service is running else it downloads and installs the agent

AppName=Teams
FileName=Teams_osx.pkg
Service='teams'

if ps ax | grep -v grep | grep $Service > /dev/null
then
	echo "$Service already installed, closing"
else
	curl https://raw.githubusercontent.com/Dijkstra92/easy-Script/master/Teams-install.sh | bash -s --
fi
