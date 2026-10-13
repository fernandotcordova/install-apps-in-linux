#!/bin/bash
# This file installs all useful applications for me. It's safe to copy this archive and add or remove installers.
# This script is designed for people using Ubuntu. The first command installs Snap Package Manager,
# so it should work on other Linux distributions that use APT.
# I don't take any comments after installations to not fill with unnecessary texts

# To install apps from this script:
# 1. Enter the folder containing this file: cd [folder]
# 2. Modify permissions: chmod +x apps.sh
# 3. ./apps.sh

# Applications that will be installed:
# Visual Studio Code
# IntelliJ
# ProtonVPN
# Apache Netbeans
# Postman
# AntaresSQL
# Oracle Virtual Box
# Gnome Extensions Manager

set -e # Stop everything if something goes wrong

if ! command -v snap &> /dev/null; then
    sudo apt update && sudo apt install -y snapd
else
    echo "Snap is already installed"
fi

# Update packages
sudo apt update -y
echo "Updating packages"

# Install flatpak
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# To VSCode
sudo snap install --classic code

# To InteliJ
sudo snap install intellij-idea --classic

# To ProtonVPN
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.8_all.deb
echo "0b14e71586b22e498eb20926c48c7b434b751149b1f2af9902ef1cfe6b03e180 protonvpn-stable-release_1.0.8_all.deb" | sha256sum --check -
sudo dpkg -i ./protonvpn-stable-release_1.0.8_all.deb && sudo apt update
sudo apt install proton-vpn-gnome-desktop
sudo apt install gnome-shell-extension-appindicator gnome-shell-extension-prefs

# To ApacheNetbeans
sudo snap install netbeans --classic

# To Postman
sudo snap install postman

# To install AntaresSQL 
flatpak install -y flathub it.fabiodistasio.AntaresSQL

# To install Oracle Virtual Box
sudo apt install -y virtualbox

# To install gnome-extesion-manager
sudo apt install gnome-shell-extension-manager

# To install Vinyl (music app)
sudo flatpak install flathub page.codeberg.M23Snezhok.Vinyl

# Cleaning temp files
rm *.deb
