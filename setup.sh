#!/bin/bash

sudo mkdir -p /etc/defined

# Download dnclient

sudo curl -L https://dl.defined.net/$VERSION/linux/amd64/dnclient -o /etc/defined/dnclient

sudo chmod +x /etc/defined/dnclient

# Install config

sudo echo $CONFIG > /etc/defined/config.yml

# Install service file

sudo cp defined.service /etc/systemd/system/

sudo systemctl daemon-reload

sudo systemctl start defined.service
