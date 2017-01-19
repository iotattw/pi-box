#!/bin/sh
IMG_FILE=raspbian.img
IMG_DIR=/mnt/raspbian
SECTOR_OFFSET=$(/sbin/fdisk -l $IMG_FILE | awk '$NF == "Linux" { print $2 }')
BYTE_OFFSET=$(expr 512 \* $SECTOR_OFFSET)

mkdir -p $IMG_DIR
mount -o loop,offset=$BYTE_OFFSET $IMG_FILE $IMG_DIR
