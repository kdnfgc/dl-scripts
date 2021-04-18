#!/bin/sh

sudo zypper install safeeyes redshift redshift-gtk kitty neovim gimp inkscape qt5ct qemu libvirt ovmf-tools virt-manager dnsmasq rust gcc make curl

sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo zypper addrepo https://brave-browser-rpm-release.s3.brave.com/x86_64/ brave-browser
sudo zypper addrepo https://packages.microsoft.com/yumrepos/vscode vscode
sudo zypper refresh
sudo zypper install brave-browser code
