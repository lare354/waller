#!/bin/bash

localBin=$HOME/.local/bin

mkdir .tmp
cd .tmp
git clone https://github.com/lare354/waller
cd waller
chmod +x waller

cp waller $localBin/waller

if [ ! -f $localBin/waller ]; then
	printf 'Failed to move waller to $HOME/.local/bin/'
	return 0
else
	printf 'Success'
	cd ../..
	rm -rf .tmp
fi
