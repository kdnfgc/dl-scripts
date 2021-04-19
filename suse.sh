#!/bin/sh

#Adds Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Installs most utilities
sudo zypper install stow zsh dash safeeyes redshift redshift-gtk kitty neovim gimp inkscape qt5ct qemu libvirt ovmf-tools virt-manager dnsmasq rust gcc make curl hte

#Adds and installs Brave and VSCode
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo zypper addrepo https://brave-browser-rpm-release.s3.brave.com/x86_64/ brave-browser
sudo zypper addrepo https://packages.microsoft.com/yumrepos/vscode vscode
sudo zypper refresh
sudo zypper install brave-browser code

#Adds my dotfiles
git clone https://github.com/kdnfgc/.dotfiles.git
cd .dotfiles
stow geany kitty vim nvim p10klx pic plank qt5ct zsh

#Adds Nerd Fonts
cd root/root/usr/share/fonts
sudo cp -r truetype /usr/share/fonts
