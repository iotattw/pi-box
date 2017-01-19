#!/bin/sh
IMG_DIR=/mnt/raspbian

./uncomment.sh libarmmem $IMG_DIR/etc/ld.so.preload
rm -f $IMG_DIR/etc/udev/rules.d/90-qemu.rules

sed -i "/ExecStart/s/ --autologin pi//" $IMG_DIR/lib/systemd/system/serial-getty\@.service
