#!/bin/sh

sudo systemctl enable libvirtd.service 
sudo systemctl start libvirtd.service
sudo virsh net-autostart default

