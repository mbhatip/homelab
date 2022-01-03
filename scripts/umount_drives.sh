#!/bin/bash
set -eux

umount /mnt/pool
umount /mnt/disk1
umount /mnt/disk2
umount /mnt/disk3
umount /mnt/disk4
umount /mnt/usb

hd-idle -t sdb
hd-idle -t sdd
hd-idle -t sde
hd-idle -t sdf
hd-idle -t sdg
