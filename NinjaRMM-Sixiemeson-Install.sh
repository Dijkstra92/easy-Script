#!/bin/sh
AppName=NinjaRMM-Install
FileName=$1
Service='ninjarmm'

if ps ax | grep -v grep | grep $Service > /dev/null
then
	echo "$Service en cours de fonctionnement, Fermeture"
else
	mkdir /tmp/$AppName
	cd /tmp/$AppName
	curl -o $FileName https://data.easy-info.com/index.php/s/MoARciLHz9BevXp/download
	sudo installer -pkg $FileNamemainoffice-4.5.6153-installer.pkg -target /
	rm -rf /tmp/$AppName
fi
