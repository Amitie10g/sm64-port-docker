#!/bin/bash

if ln -s /home/sm64/data/* . ; then
	if make VERSION="${VERSION:-us}"; then
		cp build/*_pc/sm64* /home/sm64/data/
	fi
	exit
fi

echo 'Usage: docker run -v <path_to_data>:C:\msys64\home\sm64\data -e "VERSION=<version>" -it amitie10g/sm64-port'