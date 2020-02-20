#!/bin/bash

# Deploy the scripts in update-motd.d directory

# Verify script is executed by sudo user
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit 0
fi

if [ -f "/etc/motd" ];
then
	echo "Move /etc/motd in /etc/motd.bak..."
	mv /etc/motd /etc/motd.bak
fi

if [ -d "/etc/update-motd.d" ];
then
	echo "Move /etc/update-motd.d in /etc/update-motd.d.bak..."
	mv /etc/update-motd.d /etc/update-motd.d.bak
fi

echo "Copy new motd scripts in /etc/update-motd.d"
cp -r update-motd.d /etc/update-motd.d

echo "Done."
echo "You can get back to origin motd state by running ./back_old_motd.sh"
