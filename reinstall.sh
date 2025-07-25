#!/bin/bash
echo "Removing old files..."
rm install.run;
rm README;
echo "Uninstalling services...";
dpkg -r synology-active-backup-business-linux-service;
dpkg -r synosnap;
echo "Downloading Synology Active Backup Business 2.7.1-3235...";
wget "http://updates.andrearago.it/abb/latest.zip" -O abb.zip;
echo "Extracting...";
unzip -o abb.zip;
echo "Deleting the zip file...";
rm abb.zip;
echo "Uninstalling synosnap...";
dpkg -r synosnap;
echo "Reinstalling abb...";
./install.run
echo "Reconnecting..."
abb-cli -c --address [HOSTNAME] --username [USERNAME] --password [PASSWORD_HERE]
