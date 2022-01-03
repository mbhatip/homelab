#!/bin/bash
set -eux
#fdupes -rdN /mnt/main

mount /mnt/disk1
mount /mnt/disk2
mount /mnt/disk3
mount /mnt/disk4
mount /mnt/pool
echo 15 sec to get hard drives spinning
sleep 15
$HOME/go/bin/hsync -p /mnt/main /mnt/pool &&
rsync -aivP --size-only --delete /mnt/main/ /mnt/pool

mount /mnt/usb
echo 15 sec to start copy to usb
sleep 15

$HOME/go/bin/hsync -p /mnt/main /mnt/usb
rsync -aivP --size-only --delete /mnt/main/ /mnt/usb
