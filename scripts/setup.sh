#!/bin/bash

echo "Installing Samba..."
sudo apt update
sudo apt install samba -y

echo "Creating shared directory..."
sudo mkdir -p /srv/samba/shared
sudo chmod 770 /srv/samba/shared

echo "Creating Samba group..."
sudo groupadd smbusers

echo "Restarting Samba..."
sudo systemctl restart smbd

echo "Samba lab setup completed."

