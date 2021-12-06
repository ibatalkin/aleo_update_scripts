#!/bin/bash

snarkos_folder=~/snarkOS

if [ -d $snarkos_folder ]; then
	cd $snarkos_folder
	git pull origin testnet2
	cargo install --path .
	cp $snarkos_floder/target/release/snarkos &0/binary/snarkos
	
	cd &0
	git add snarkos
	git push
else
	echo "Can't find snarkOS flolder"
fi
