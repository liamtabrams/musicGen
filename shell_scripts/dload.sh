#!/bin/bash
# dload.sh Manages the download of the full dataset
# Author: Evan Azevedo
# Created At: 11/23/18

URLFULL="https://os.unil.cloud.switch.ch/fma/fma_full.zip"
CURLARGS="-f -L -O -C -"

let rc=1
while [ "$rc" -ne 0 ]; do
	curl $CURLARGS $URLFULL; rc=$?
	wait
	echo "Sleeping..."
	sleep 30
	echo "Restarting download..."
done
exit 0
