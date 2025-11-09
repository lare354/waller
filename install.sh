#!/bin/bash

localBin=$HOME/.local/bin
cacheDir=$HOME/.cache/waller
confDir=$HOME/.config/waller
conf=$confDir/waller.conf
rasi=$confDir/waller.rasi

if [ ! -d "$cacheDir" ]; then
	mkdir $cacheDir	
fi

if [ ! -f "$conf" ]; then
	if [ ! -d "$confDir" ]; then
		mkdir $confDir
	fi 
	printf '# enable/disable blur (true/false) \nblur=false \n\n# path to wallpaper directory \n#wallsDir="/usr/share/wallpapers/" \n\n# use soft blur (true/false) \nsoftBlur=true' > $confDir/waller.conf
fi

if [ ! -f "$rasi" ]; then
	printf 'error'
fi
