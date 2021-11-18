#!/bin/bash

sudo mkdir -p /etc/defined

# Download dnclient

sudo curl -L https://dl.defined.net/$VER/linux/amd64/dnclient -o /etc/defined/dnclient

# Install service file

sudo cp defined.service /etc/systemd/system/

sudo systemctl daemon-reload

sudo systemctl start defined.service

# Configure

sudo /etc/defined/dnclient enroll -code $CODE
