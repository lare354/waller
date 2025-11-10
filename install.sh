#!/bin/bash

localBin=$HOME/.local/bin
confDir=$HOME/.config/waller
conf=$confDir/waller.conf
rasi=$confDir/waller.rasi

if [ ! -f "$conf" ]; then
	if [ ! -d "$confDir" ]; then
		mkdir $confDir
	fi 
		curl -o $conf https://raw.githubusercontent.com/lare354/waller/refs/heads/main/waller.conf
fi

curl -o $rasi https://raw.githubusercontent.com/lare354/waller/refs/heads/main/waller.rasi

curl -o $localBin/waller https://raw.githubusercontent.com/lare354/waller/refs/heads/main/waller
chmod +x $localBin/waller

printf 'done'
