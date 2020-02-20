#!/bin/bash

# Cancel motd modifications and return to origin state
# Considering you have deployed your motd banner with the 'deploy_new_motd.sh' script

# Verify script is executed by sudo user
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit 0
fi

if [ -f "/etc/motd.bak" ];
then
	echo "Move /etc/motd.bak in /etc/motd..."
	mv /etc/motd.bak /etc/motd
fi

if [ -d "/etc/update-motd.d.bak" ];
then
	echo "Move /etc/update-motd.d.bak in /etc/update-motd.d..."
	rm -rf /etc/update-motd.d
	mv /etc/update-motd.d.bak /etc/update-motd.d
fi

echo "Done."
