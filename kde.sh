#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo reflector --verbose --country 'India' -l 5 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syyy
sudo pacman -S xf86-video-intel
sudo pacman -S xorg sddm packagekit-qt5 plasma-desktop konsole dolphin kate okular ark gwenview breeze-gtk kde-gtk-config kdeplasma-addons plasma-nm plasma-pa bluedevil powerdevil sddm-kcm kinfocenter spectacle

sudo systemctl enable sddm
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
# poweroff
reboot
