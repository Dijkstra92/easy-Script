#!/bin/sh

# Check if Teams service is running else it downloads and installs the agent

AppName=Teams
FileName=kingcommainoffice
Service='ninjarmm'

if ps ax | grep -v grep | grep $Service > /dev/null
then
	echo "$Service already installed, closing"
else
	mkdir /tmp/$AppName
	cd /tmp/$AppName
	curl -o $FileName-4.5.6153-installer.pkg https://data.easy-info.com/index.php/s/sRZKmUEYvHS0U5W/download
	sudo installer -pkg $FileName-4.5.6153-installer.pkg -target /
	rm -rf /tmp/$AppName
fi
