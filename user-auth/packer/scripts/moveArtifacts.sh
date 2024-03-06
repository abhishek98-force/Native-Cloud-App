#!/bin/bash

sudo groupadd csye6225
sudo useradd -M -N -g csye6225 -s /usr/sbin/nologin csye6225
sudo chown -R csye6225:csye6225 /home/packer/webapp
sudo mkdir -p /home/csye6225
sudo groupadd csye6225
sudo useradd -M -N -g csye6225 -s /usr/sbin/nologin csye6225
sudo chown -R csye6225:csye6225 /home/csye6225
sudo mv /home/packer/webapp /home/csye6225
sudo chown -R csye6225:csye6225 /home/csye6225/webapp

sudo mv /tmp/node-server.service /etc/systemd/system/node-server.service
sudo systemctl daemon-reload
sudo systemctl enable node-server.service
