#!/bin/bash

# First Create 2 Partitions
 
# Issue Command:  cfdisk /dev/sdX
# Partition 1 - 0.5 - 1.0 GiB in size as EFI partition
# Partition 2 - Remaining space as Linux Filesystem

# Format Partitions
# mkfs.fat -F32 /dev/sdX1  -- This is for the EFI partition
# mkfs.ext4 /dev/sdX2  -- This is for the Linux Install

# Mount new Filesystem
# Issue Command: mnt /dev/sdX2 /mnt

# Install Base Packages
# Issue Command: pacstrap /mnt base base-devel

# Mount The EFI Partition
# Issue Command: mkdir /mnt/boot/efi
# Issue Command: mnt/dev/sdX1 /mnt

# Generate Fstab
genfstab -U /mnt >> /mnt/etc/fstab

# Become Root Owner of New Install
arch-chroot /mnt

# Set Timezone
ln -sf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
hwclock --systohc

# Set Characters and Location
echo en_US.UTF-8 >> /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 >> /etc/locale.conf

# Install Packages for GRUB & Bootloader
pacman -Syu
pacman -S grub efibootmgr --noconfirm
grub-install /boot/efi
grub-mkconfig -o /boot/grub/grub.cfg

# Create Hostname
echo ArchBox >> /etc/hostname


