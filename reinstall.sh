#!/bin/bash
echo "Uninstalling service...";
dpkg -r synology-active-backup-business-linux-service;
echo "Uninstalling driver...";
dpkg -r synosnap;
echo "Reinstalling abb...";
./install.run
echo "Reconnecting..."
abb-cli -c
