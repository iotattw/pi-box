#!/bin/sh
IMG_FILE=$1
SECTOR_OFFSET=$(/sbin/fdisk -l $IMG_FILE | awk '$NF == "Linux" { print $2 }')
BYTE_OFFSET=$(expr 512 \* $SECTOR_OFFSET)
IMG_DIR=`./truncate-extension.sh $IMG_FILE`

echo Mounting at /mnt/$IMG_DIR

mkdir -p /mnt/$IMG_DIR
mount -o loop,offset=$BYTE_OFFSET $IMG_FILE /mnt/$IMG_DIR