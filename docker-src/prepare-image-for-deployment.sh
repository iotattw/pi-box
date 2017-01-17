#!/bin/sh
IMG_DIR=$1

./uncomment.sh libarmmem $IMG_DIR/etc/ld.so.preload
rm -f $IMG_DIR/etc/udev/rules.d/90-qemu.rules
