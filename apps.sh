# ==============================================================================
#
# This script installs all useful applications and system tools.
# It is designed for Ubuntu and Debian-based distributions.
# This is build to my use PC, but fell free to copy and change the code
#
# ## Instructions
# 1. Enter the directory: cd [path]
# 2. Grant permissions: chmod +x apps.sh
# 3. Execute: ./apps.sh
#
# ## Applications Installed
# - IDEs & Editors: Visual Studio Code, IntelliJ IDEA, Apache NetBeans
# - Development Tools: Postman, AntaresSQL, Oracle VirtualBox
# - Desktop Utilities: GNOME Extension Manager, AppIndicator support
# - VPN & Media: ProtonVPN, Vinyl Music Player
# ==============================================================================

set -e # Stop everything if something goes wrong

## Downloading package manager 

# - Non-interactive mode to prevent blocking dialogs
export DEBIAN_FRONTEND=noninteractive

## 1. System Update & Package Managers Setup

echo "Updating packages and upgrading system..."
sudo apt upgrade -y && sudo apt update -y

if ! command -v snap &> /dev/null; then
    echo "\nInstalling Snapd..."
    sudo apt install -y snapd
else
    echo "\nSnap is already installed"
fi

# - Install flatpak
echo "\nConfiguring flatpak and flathub..."
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

## 2. APT Applications

echo "\nInstalling APT packages..."
sudo apt install -y \
    # To install Oracle Virtual Box
    virtualbox \
    # To install gnome-extesion-manager
    gnome-shell-extension-manager \ 

## 3. Snap Applications

echo "\n Installing Snap packages..."
sudo snap install --classic code # To install VSCode
sudo snap install intellij-idea --classic # To install InteliJIDEA
sudo snap install netbeans --classic # To install ApacheNetbeans IDE
sudo snap install postman # To install Postman

## 4. Flatpak applications

echo "\nInstalling AntaresSQL and Vinyl..."
flatpak install -y flathub it.fabiodistasio.AntaresSQL # To install AntaresSQL 
sudo flatpak install -y flathub page.codeberg.M23Snezhok.Vinyl 

## 5. ProtonVPN installation
echo "\nInstalling ProtonVPN..."
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.8_all.deb
echo "0b14e71586b22e498eb20926c48c7b434b751149b1f2af9902ef1cfe6b03e180 protonvpn-stable-release_1.0.8_all.deb" | sha256sum --check -

sudo apt install -y ./protonvpn-stable-release_1.0.8_all.deb
sudo apt update -y
sudo apt install -y proton-vpn-gnome-desktop
sudo apt install -y gnome-shell-extension-appindicator gnome-shell-extension-prefs

# Cleaning temp files
rm -f *.deb

echo "All application installed sucessfully"
