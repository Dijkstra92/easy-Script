#!/bin/sh

# Check if Teams service is running else it downloads and installs the agent

AppName=Teams
FileName=Teams_osx.pkg
Service='teams'

if ps ax | grep -v grep | grep $Service > /dev/null
then
	echo "$Service already installed, closing"
else
	mkdir /tmp/$AppName
	cd /tmp/$AppName
	curl -O  https://data.easy-info.com/index.php/s/CtD4lpv6rClxDfL/download
	sudo installer -pkg $Filename -target /
	rm -rf /tmp/$AppName
fi
