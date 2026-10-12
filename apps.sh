# That file install alls apps util to me. Be safe to copy this archive and add (or withdraw) installers
# In this archive I think in peoples that are using Ubuntu, but that's archive will install a Snap Packet Manager in this first command. So, we have not problems to others Linux distribuitions that use APT

# To install apps in this archive: 
# 1. enter in folder that contains this file: cd [folder]
# 2. modify the permissions: chmod +x apps.sh
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

set -e # Stop everthing if someone out of expected
if ! command -v snap &> /dev/null; then
    sudo apt update && sudo apt install -y snapd
else
    echo "The snap packet manager is just installed"
fi

# Update package
sudo apt update -y
echo "Updating packets"

# Install flatpak
sudo apt install flatpak

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
flatpak install flathub it.fabiodistasio.AntaresSQL

# To install Oracle Virtual Box
sudo apt virtualbox

# To install gnome-extesion-manager
sudo apt install gnome-shell-extension-manager

# Cleaning temp files
rm *.deb
