#!/bin/bash

# Set Filesystem Size To Be Bigger To Hold Git
# mount -o remount,size=2G /run/archiso/cowspace
# pacman -Sy git
# git clone git://github.com/helmuthdu/aui

# ./fifo
# Reboot!
# ./lilo

#######################################
## Once you are in your full install ##
#######################################

# Update Package Sources
sudo pacman -Syu --noconfirm
sudo pacaur -Sy

# GTKMM3 For Copy/Paste Functionality
sudo pacman -S gtkmm3 --noconfirm
# Tmux and CRON
sudo pacman -S tmux cron
# Stuff For Compiling In R
sudo pacman -S hdf5 hdf5-openmpi gcc-fortran
# KDE UI Stuff
sudo pacman -S arc-kde papirus-icon-theme

# RStudio Install
pacaur -S rstudio-desktop-bin
