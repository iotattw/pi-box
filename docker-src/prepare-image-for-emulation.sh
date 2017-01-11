#!/bin/sh
IMG_DIR=`./truncate-extension.sh $1`

./comment.sh libarmmem /mnt/$IMG_DIR/etc/ld.so.preload
sed -i 's/\/dev\/mmcblk0p/\/dev\/sda/' /mnt/$IMG_DIR/etc/fstab