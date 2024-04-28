#!/bin/bash

sudo apt update && sudo apt upgrade

## Git:
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git -y

## Chrome:
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# sudo dpkg -i google-chrome-stable_current_amd64.deb
# rm ./google-chrome-stable_current_amd64.deb

## VSCode:
# sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
# sudo apt install code

## Flameshot
# sudo apt-get install flameshot -y
# gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot '[]'
# settings -> keyboard -> shortcuts -> Command: /usr/bin/flameshot gui && Shortcut: prtsc

## Node/NPM:
sudo apt install nodejs npm -y
sudo npm install -g n
sudo n lts
sudo apt purge nodejs npm -y

## DBeaver
# flatpak install flathub io.dbeaver.DBeaverCommunity

## Java:
sudo apt install -y openjdk-17-jre

## Docker
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
# sudo chmod 666 /var/run/docker.sock
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world


## ZSH/OhMyZSH:
sudo apt install zsh -y
chsh -s /bin/zsh
zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

## Fonts:
sudo apt install fonts-firacode
sudo apt-get install fonts-powerline

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# ZSH_THEME="spaceship"

## Dock
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true
#  settings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
#  gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.5
#  gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

# gnome-terminal -- zsh -c "neofetch; exec zsh"

# Neofetch & wmctrl
sudo apt install neofetch wmctrl -y

# gnome-terminal -- zsh -c "neofetch; exec zsh" &
# sleep 1
# wmctrl -r :ACTIVE: -b add,sticky
# wmctrl -r :ACTIVE: -b remove,above

sudo apt autoremove -y
sudo apt update && sudo apt upgrade

