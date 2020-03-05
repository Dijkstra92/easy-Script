#!/bin/sh

# Check if NinjaRMM service is running else it downloads and installs the agent

AppName=Teams
FileName=Teams_osx.pkg
Service='teams'

if ps ax | grep -v grep | grep $Service > /dev/null
then
	echo "$Service already installed, closing"
else
	mkdir /tmp/$AppName
	cd /tmp/$AppName
	curl -o Teams_osx.pkg https://data.easy-info.com/index.php/s/CtD4lpv6rClxDfL/download
	sudo installer -pkg $FileName -target /
	rm -rf /tmp/$AppName
fi
