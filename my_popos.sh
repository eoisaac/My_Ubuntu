#!/bin/bash

sudo apt update && sudo apt upgrade

## Git:
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git -y

## Chrome:
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm ./google-chrome-stable_current_amd64.deb

## VSCode:
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

## Flameshot
sudo apt-get install flameshot -y
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot '[]'
# settings -> keyboard -> shortcuts -> Command: /usr/bin/flameshot gui && Shortcut: prtsc

## Node/NPM:
sudo apt install nodejs npm
sudo npm install -g n
sudo n lts

## DBeaver
flatpak install flathub io.dbeaver.DBeaverCommunity

## Java: 	
curl -O https://download.java.net/java/GA/jdk18/43f95e8614114aeaa8e8a5fcf20a682d/36/GPL/openjdk-18_linux-x64_bin.tar.gz
tar xvf openjdk-18_linux-x64_bin.tar.gz
sudo mv jdk-18 /opt/
sudo tee /etc/profile.d/jdk18.sh <<EOF
export JAVA_HOME=/opt/jdk-18
export PATH=\$PATH:\$JAVA_HOME/bin
EOF
source /etc/profile.d/jdk18.sh

## Docker

## FiraCode:
sudo apt install fonts-firacode

## ZSH/OhMyZSH:
sudo apt install zsh -y
chsh -s /bin/zsh
zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

## Dock
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true
#  settings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
#  gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.5
#  gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

sudo apt update && sudo apt upgrade

