#!/bin/sh
KERNEL_FILE=$1
IMG_FILE=$2

qemu-system-arm \
	-kernel $KERNEL_FILE \
	-cpu arm1176 \
	-m 256 \
	-M versatilepb \
	-no-reboot \
	-append  "root=/dev/sda2 panic=1 rootfstype=ext4 rw console=ttyAMA0,115200" \
	-drive "file=$IMG_FILE,index=0,media=disk,format=raw" \
	-nographic \
	-redir tcp:2222::22
	#-net nic -net user,hostfwd=tcp::2222-:22,hostfwd=tcp::22280-:80
#-append  "rw earlyprintk loglevel=8 console=ttyAMA0,115200 dwc_otg.lpm_enable=0 root=/dev/mmcblk0p2" \
