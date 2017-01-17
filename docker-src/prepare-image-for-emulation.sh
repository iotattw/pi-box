#!/bin/sh
IMG_DIR=$1
INIT_SCRIPT=pi-init-scripts.sh
INIT_DIR=$IMG_DIR/etc/pi-init

./comment.sh libarmmem $IMG_DIR/etc/ld.so.preload
echo "KERNEL==\"sda\", SYMLINK+=\"mmcblk0\"" > $IMG_DIR/etc/udev/rules.d/90-qemu.rules
echo "KERNEL==\"sda?\", SYMLINK+=\"mmcblk0p%n\"" >> $IMG_DIR/etc/udev/rules.d/90-qemu.rules
echo "KERNEL==\"sda2\", SYMLINK+=\"root\"" >> $IMG_DIR/etc/udev/rules.d/90-qemu.rules