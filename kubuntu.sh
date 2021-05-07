#!/bin/sh

sudo apt install stow zsh dash kitty latte-dock vim neovim krita kbackup

#Installs brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

#Installs safeeyes
sudo add-apt-repository ppa:slgobinath/safeeyes
sudo apt update
sudo apt install safeeyes

#Removes firefox
sudo apt remove firefox thunderbird

#Adds my dotfiles
git clone https://github.com/kdnfgc/.dotfiles.git
cd .dotfiles
stow kitty vim nvim p10kux pic zsh profile

#Adds Nerd Fonts
cd root/root/usr/share/fonts
sudo cp -r truetype /usr/share/fonts
cd

#Adds halmak layout
cd .dotfiles/root/root/usr/share/X11/xkb
sudo cp -r rules /usr/share/X11/xkb
sudo cp -r symbols /usr/share/X11/xkb
sudo cp -r types /usr/share/X11/xkb
cd
cd .dotfiles/root/root/etc/X11/xorg.conf.d
sudo cp 00-keyboard.conf /etc/X11/xorg.conf.d
cd

#Adds Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Installs pfetch
git clone https://github.com/dylanaraps/pfetch.git
cd pfetch
make
sudo make install
cd

#Adds Gruvbox-Material theme
#git clone https://github.com/sainnhe/gruvbox-material-gtk.git
#cd gruvbox-material-gtk
#sudo cp -r icons/* /usr/share/icons
#sudo cp -r themes/* /usr/share/themes
#cd
#sudo rm -r gruvbox-material-gtk

#Removes terminal
sudo apt remove konsole

#Make zsh my default shell
sudo chsh -s /bin/zsh

#Restarts system
sudo reboot
