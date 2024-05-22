#!/bin/bash

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y

# Install necessary dependencies
sudo apt install -y build-essential wget git

# Download AllStarLink installation script
cd /usr/src
sudo wget https://downloads.allstarlink.org/installcd/allstarlink-2.0.0.iso
sudo mkdir -p /mnt/allstarlink
sudo mount -o loop allstarlink-2.0.0.iso /mnt/allstarlink
cd /mnt/allstarlink
sudo ./install.sh

# Clone the AllStarLink repository
cd /usr/src
sudo git clone https://github.com/AllStarLink/Asterisk.git
cd Asterisk

# Compile and install Asterisk with app_rpt
sudo ./configure
sudo make menuselect.makeopts
sudo make
sudo make install
sudo make samples
sudo make config

# Set up app_rpt configuration
sudo cp /usr/src/Asterisk/configs/rpt.conf /etc/asterisk/rpt.conf
sudo cp /usr/src/Asterisk/configs/extensions.conf /etc/asterisk/extensions.conf
sudo cp /usr/src/Asterisk/configs/iax.conf /etc/asterisk/iax.conf

# Enable and start Asterisk
sudo systemctl enable asterisk
sudo systemctl start asterisk

# Install additional Asterisk modules if needed
sudo apt install -y asterisk-dahdi asterisk-mp3

# Clean up
sudo umount /mnt/allstarlink
sudo rm -rf /usr/src/allstarlink-2.0.0.iso

# Provide instructions to the user
echo "Installation complete. Please configure your /etc/asterisk/rpt.conf file with your node details."
echo "You can start the Asterisk CLI with: sudo asterisk -rvvv"

# End of script
