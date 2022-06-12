#!/bin/bash

# FrontEnd Config

# Importante
sudo apt install dkms make perl gcc build-essential curl -y

# CHROME
wget https:// dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# FIRACODE
sudo apt install fonts-firacode

# VSCODE
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code
sudo apt update
sudo apt upgrade

# FLAMESHOT
sudo apt-get install flameshot -y
## Configs:
  ### Remove default printscreen key:
    gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot '[]' 
  ### Enable flameshot printscreen key:
    settings -> keyboard shortcuts -> + 
    Name: flameshot
    Command: /usr/bin/flameshot gui
    Shortcut: prtsc
  ### Remove tray icon

# TWEAKS
sudo apt install gnome-tweaks
sudo apt install chrome-gnome-shell

# JDK
sudo add-apt-repository ppa:linuxuprising/java -y
sudo apt update
sudo apt-get install oracle-java17-installer oracle-java17-set-default

# NODE
  ## LATEST LTS VERSION
  curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt-get install -y nodejs

  sudo apt install nodejs

# GIT
  sudo add-apt-repository -y ppa:git-core/ppa
  sudo apt-get update
  sudo apt-get install git -y

# ZSH
  sudo apt install zsh -y
  chsh -s /bin/zsh
  zsh
  ## "enter"

# OHMYZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

# Instalar Zsh Autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Instalar Zsh Syntax Highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

 nano ~/.zshrc
# UPDATE ZSH PLUGINS
 #plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

##"CRTL + O -> ENTER -> CTRL + X"

# DOCK
  ### Set dock to bottom
  ### Enable transparency
    settings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
  ### Set opacity
    gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.5
  ### Center dock
    gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
  ### Show trash on dock
    gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true

# GRUB

#NETBEANS
sudo apt install netbeans -y


##"https://gist.github.com/luizomf/1fe6c67f307fc1df19e58f224134dc8f"