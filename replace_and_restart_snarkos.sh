#!/bin/bash

systemctl stop aleod

wget https://github.com/ibatalkin/aleo_update_scripts/blob/f8f549c8e1dc2e8cb5e1ef3bc89d424910ba8f90/binary/snarkos -P /usr/bin/
chmod +x /bin/snarkos

systemctl restart aleod


