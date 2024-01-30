#!/bin/sh

#Redirects to home directory
cd

#Installs most utils
sudo dnf install -y zsh dash vim-enhanced neovim python3-neovim qt5ct rust cargo kbackup


#Installs brave
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install -y brave-browser

#Removes firefox
sudo dnf rm -y firefox thunderbird

#Removes default profile
sudo rm .profile

#Adds my dotfiles
git clone https://github.com/kdnfgc/.dotfiles.git
cd .dotfiles
stow vim nvim p10kux pic qt5ct zsh profile mate

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


#Adds Gruvbox-Material theme
#git clone https://github.com/sainnhe/gruvbox-material-gtk.git
#cd gruvbox-material-gtk
#sudo cp -r icons/* /usr/share/icons
#sudo cp -r themes/* /usr/share/themes
#cd
#sudo rm -r gruvbox-material-gtk

#Removes mate-terminal
#sudo dnf rm -y mate-terminal

#Make zsh my default shell
sudo chsh -s /bin/zsh

#Restarts system
sudo reboot
