#!/bin/bash
# options to fail script on error
set -eux

# copy important files to /mnt/main
rsync -aivP --delete $HOME/{config-docker,go,other} /mnt/main/home 

# remove duplicate files (takes lots of time)
#fdupes -rdN /mnt/main

# mount backup disks
mount /mnt/disk1
mount /mnt/disk2
mount /mnt/disk3
mount /mnt/disk4
mount /mnt/pool
mount /mnt/usb

# wait 15s to get hard drives spinning
sleep 15

# hsync renames files instead of delete/copy, rsync copies files over
hsync -p /mnt/main /mnt/pool
rsync -aivP --exclude swapfile --size-only --delete /mnt/main/ /mnt/pool

# 2nd backup
hsync -p /mnt/main /mnt/usb
rsync -aivP --exclude swapfile --size-only --delete /mnt/main/ /mnt/usb
