#!/bin/bash

snarkos_folder=~/snarkOS
upd_folder=~/aleo_update_scripts

if [ -d $snarkos_folder ]; then
	cd $snarkos_folder
        STATUS=$(git pull origin testnet2)
	if [ "$STATUS" != "Already up to date." ]; then
		cargo install --path .
		cp target/release/snarkos $upd_folder/binary/snarkos
	
		cd $upd_folder
		git add binary/
		git commit -m "update snarkos binary"
		git push
	else
		echo "Up to date. No need rebuild."
	fi
else
	echo "Can't find snarkOS flolder"
fi
