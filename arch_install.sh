#!/bin/bash

# Set Filesystem Size To Be Bigger To Hold Git
mount -o remount,size=2G /run/archiso/cowspace
pacman -Sy git
git clone git://github.com/helmuthdu/aui

cd <dir> && ./fifo
