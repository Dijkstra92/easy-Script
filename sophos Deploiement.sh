#!/bin/bash
SOPHOS_DIR="/Users/Shared/Sophos_Install"
mkdir $SOPHOS_DIR
cd $SOPHOS_DIR
printf "entrez le code de Download:\n"
read code

# Installing Sophos
curl -L -o SophosInstall.zip -k  "https://share.saguez-and-partners.com/index.php/s/$code/download/SophosInstall.zip"
unzip SophosInstall.zip
chmod a+x $SOPHOS_DIR/Sophos\ Installer.app/Contents/MacOS/Sophos\ Installer
chmod a+x $SOPHOS_DIR/Sophos\ Installer.app/Contents/MacOS/tools/com.sophos.bootstrap.helper
sudo $SOPHOS_DIR/Sophos\ Installer.app/Contents/MacOS/Sophos\ Installer --quiet
rm -rf $SOPHOS_DIR
exit 0
