#!/bin/sh
printf "Are you sure you want to uninstall Webmin? (y/n) : "
read answer
printf "\n"
if [ "$answer" = "y" ]; then
	echo "Removing Webmin package .."
	dpkg --remove webmin
	echo "Done!"
fi
