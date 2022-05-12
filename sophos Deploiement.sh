    #!/bin/bash
    
    
cd /tmp/
printf "entrez le code de download:\n"
read code
curl -k -o https://data.easy-info.com/index.php/s/$code/download
unzip SophosInstall.zip
chmod +x /tmp/Sophos\ Installer.app/Contents/Ressources/SophosBootstrap-Options.plist 
	 /tmp/Sophos\ Installer.app/Contents/MacOS/Sophos\ Installer --install