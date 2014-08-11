#!/bin/sh
if [ -x /usr/bin/docker ]; then
	dockerbin=/usr/bin/docker
elif [ -x /usr/bin/docker.io ]; then
	dockerbin=/usr/bin/docker.io
else
	echo "Could not find docker binary"
	exit 1
fi
$dockerbin build -t om3ganet/unifi:latest .
