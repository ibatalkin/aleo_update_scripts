#!/bin/bash

systemctl stop aleod

cd $HOME
wget https://github.com/ibatalkin/aleo_update_scripts/raw/main/binary/snarkos -O /usr/bin/snarkos
chmod +x /usr/bin/snarkos

systemctl restart aleod


