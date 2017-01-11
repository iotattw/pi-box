#!/bin/sh
IMG_DIR=`./truncate-extension.sh $1`

./uncomment.sh libarmmem /mnt/$IMG_DIR/etc/ld.so.preload
sed -i 's/\/dev\/sda/\/dev\/mmcblk0p/' /mnt/$IMG_DIR/etc/fstab
