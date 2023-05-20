#!/bin/bash

sudo apt-get update

# Get zip
sudo apt-get -y install zip &

# Get libtool
cd /host/libtool-debian-master && ./configure && make && sudo make install && cd /host &

# Get musl
# cd /host/extras/musl-1.2.2 && make && sudo make install &

# Get venv for building sel4cp SDK
sudo apt-get -y install python3-venv

# Setup venv for building sel4cp SDK
cd /host/sel4cp
python3.9 -m venv env
./env/bin/pip install --upgrade pip setuptools wheel
./env/bin/pip install -r requirements.txt

# Get musl tools for building sel4cp SDK
sudo apt-get -y install musl-tools

cd /host/sDDF/echo_server