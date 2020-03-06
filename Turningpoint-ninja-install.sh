#!/bin/sh
AppName='mainoffice-4.5.6153-installer'
FileName='turningpoint'
Service='ninjarmm'

if ps ax | grep -v grep | grep $Service > /dev/null
then
	echo "$Service en cours de fonctionnement, Fermeture"
else
	mkdir /tmp/$AppName
	cd /tmp/$AppName
	curl -o $FileNamemainoffice-4.5.6153-installer.pkg https://data.easy-info.com/index.php/s/MoARciLHz9BevXp/download
	sudo installer -pkg $FileNamemainoffice-4.5.6153-installer.pkg -target /
	rm -rf /tmp/$AppName
fi
