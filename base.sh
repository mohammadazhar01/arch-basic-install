#!/bin/bash

ip a
iwctl
timedatectl set-ntp true
pacman -Syyy
pacman -S reflector
reflector --verbose --country 'India' -l 5 --sort rate --save /etc/pacman.d/mirrorlist
pacman -Syyy

# lsblk
# cgdisk
# mkfs.ext4 /dev/sdaX
# mkfs.vfat /dev/sdaX1
# mkdir -p /mnt/boot/efi
# mount /dev/sdaX /mnt
# mount /dev/sdaX1 /mnt/boot/efi
# in case of dual boot with widows, make separate directory and mount windows drive on created directory
# pacstrap /mnt base linux linux-firmware vim git intel-ucode
# genfstab -U /mnt >> /mnt/etc/fstab
# arch-chroot /mnt