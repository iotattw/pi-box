#!/bin/sh
IMG_DIR=/mnt/raspbian
HOME_DIR=$IMG_DIR/home/pi

./comment.sh libarmmem $IMG_DIR/etc/ld.so.preload
echo "KERNEL==\"sda\", SYMLINK+=\"mmcblk0\"" > $IMG_DIR/etc/udev/rules.d/90-qemu.rules
echo "KERNEL==\"sda?\", SYMLINK+=\"mmcblk0p%n\"" >> $IMG_DIR/etc/udev/rules.d/90-qemu.rules
echo "KERNEL==\"sda2\", SYMLINK+=\"root\"" >> $IMG_DIR/etc/udev/rules.d/90-qemu.rules

sed -i "/ExecStart/s/\$TERM$/& --autologin pi/" $IMG_DIR/lib/systemd/system/serial-getty\@.service

if [ ! -f $HOME_DIR/.ssh/authorized_keys ]; then
	mkdir -p $HOME_DIR/.ssh
	cat /root/.ssh/id_rsa.pub >> $HOME_DIR/.ssh/authorized_keys
fi
