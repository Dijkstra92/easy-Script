#!/bin/sh

# Check if Teams service is running else it downloads and installs the agent

AppName=Teams
echo "Quel client souhaite tu déployer ?"
read  client
#FileName=kingcom
Service='ninjarmm'

if ps ax | grep -v grep | grep $Service > /dev/null
then
	echo "$Service en cours de fonctionnement, Fermeture"
else
	mkdir /tmp/$AppName
	cd /tmp/$AppName
	curl -o $FileNamemainoffice-4.5.6153-installer.pkg #https://data.easy-info.com/index.php/s/sRZKmUEYvHS0U5W/download
	sudo installer -pkg $clientoffice-4.5.6153-installer.pkg -target /
	rm -rf /tmp/$AppName
fi
