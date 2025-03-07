#!/bin/bash
echo "Uninstalling service...";
dpkg -r synology-active-backup-business-linux-service;
echo "Uninstalling driver...";
echo "Downloading Synology Active Backup Business 2.7.1-3235...";
wget "https://global.download.synology.com/download/Utility/ActiveBackupBusinessAgent/2.7.1-3235/Linux/x86_64/Synology%20Active%20Backup%20for%20Business%20Agent-2.7.1-3235-x64-deb.zip" -O abb.zip;
echo "Extracting...";
unzip abb.zip;
dpkg -r synosnap;
echo "Reinstalling abb...";
./install.run
echo "Reconnecting..."
abb-cli -c --address [HOSTNAME] --username [USERNAME] --password [PASSWORD_HERE]
