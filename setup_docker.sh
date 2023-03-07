#!/bin/bash

sudo apt-get update

# Get zip
sudo apt-get -y install zip

# Get libtool
cd /host/libtool-debian-master
./configure && make
sudo make install
cd /host

# Get musl
cd /host/extras/musl-1.2.2
make
sudo make install
cd /host/sDDF/echo_server