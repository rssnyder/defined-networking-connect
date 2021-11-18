#!/bin/bash

echo "Create defined dir"
sudo mkdir -p /etc/defined

echo "Download dnclient"
sudo curl -L https://dl.defined.net/$VERSION/linux/amd64/dnclient -o /etc/defined/dnclient
sudo chmod +x /etc/defined/dnclient

echo "Install config"
echo $CONFIG | base64 -d | sudo tee /etc/defined/config.yml

echo "Install service file"
sudo cp defined.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start defined.service

sleep 3

echo "Show some systemd info"
systemctl status defined | head -n 8

echo "Show interface information"
# ip addr | grep -A3 nebula99
ip addr | grep inet
