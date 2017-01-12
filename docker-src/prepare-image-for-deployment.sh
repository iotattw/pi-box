#!/bin/sh
IMG_DIR=`./truncate-extension.sh $1`

./uncomment.sh libarmmem /mnt/$IMG_DIR/etc/ld.so.preload
rm -f /mnt/$IMG_DIR/etc/udev/rules.d/90-qemu.rules
