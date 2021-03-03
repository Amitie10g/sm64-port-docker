#!/bin/env bash

if ln -s /home/ContainerUser/data/baserom.??.z64 . &> /dev/null ; then
	if make VERSION="${VERSION:-us}"; then
		cp ./build/*_pc/sm64* /home/ContainerUser/data/ &> /dev/null
	fi
	exit
fi

echo 'Usage:'
echo ''
echo 'docker run -v <path_to_data>:C:\home\ContainerUser\data -e "VERSION=<version>" amitie10g/sm64-port'
echo ''
echo 'Add "bash" or "cmd" at the end for an interactive shell'