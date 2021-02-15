#!/bin/bash

if ln -s /home/sm64/data/* . &> /dev/null ; then
	if make VERSION="${VERSION:-us}"; then
		cp build/*_pc/sm64* /home/sm64/data/ &> /dev/null
	fi
	exit
fi

echo 'Usage:'
echo ''
echo 'docker run -v <path_to_data>:C:\msys64\home\sm64\data -e "VERSION=<version>" amitie10g/sm64-port'
echo ''
echo 'Add "bash" or "cmd" at the end for an interactive shell'