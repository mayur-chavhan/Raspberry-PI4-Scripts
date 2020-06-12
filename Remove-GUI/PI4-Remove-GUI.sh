#!/bin/bash
#Script          :Pi4-Remove-GUI.sh
#Notes           :This script will remove GUI Pi-4 apps and System GUI components from Raspbian Desktop
#Author		 	 :Mayur Chavhan
#Site	         :http://www.techwhale.in
#==============================================================================

# Remove Raspberry Desktop GUI components

sudo apt purge xserver* lightdm* raspberrypi-ui-mods -y

# Start to remove listed GUI Applications
sudo apt-get --yes remove --purge minecraft-pi
sudo apt-get --yes remove --purge scratch
sudo apt-get --yes remove --purge wolfram-engine
sudo apt-get --yes remove --purge debian-reference-*
sudo apt-get --yes remove --purge epiphany-browser*
sudo apt-get --yes remove --purge sonic-pi
sudo apt-get --yes remove --purge supercollider*
sudo apt-get --yes remove --purge greenfoot
sudo apt-get --yes remove --purge bluej
sudo apt-get --yes remove --purge sense-hat
sudo apt-get --yes remove --purge sense-emu-tools
sudo apt-get --yes remove --purge scratch2
sudo apt-get --yes remove --purge nodered
sudo apt-get --yes remove --purge libreoffice*
sudo apt-get --yes remove --purge claws-mail
sudo apt-get --yes remove --purge python3-thonny
sudo apt-get --yes remove --purge geany*
sudo apt-get --yes remove --purge chromium-browser
sudo apt-get --yes remove --purge realvnc-vnc-viewer
sudo apt-get --yes remove --purge realvnc-vnc-server
sudo apt-get --yes remove --purge smartsim
sudo apt-get --yes remove --purge piclone

#Delete unused folders and files
sudo rm -R /usr/share/python_games
sudo rm -f /etc/apt/apt.conf.d/20packagekit
# Autoremove Backlogs
sudo apt-get autoremove -y

# Auto Clean
sudo apt-get autoclean -y

# Update
sudo apt-get update

# Upgrade
sudo apt-get upgrade -y

echo -e "Please reboot PI-4 OS - "\nsudo reboot"
