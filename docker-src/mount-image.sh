#!/bin/sh
IMG_FILE=$1
IMG_DIR=$2
SECTOR_OFFSET=$(/sbin/fdisk -l $IMG_FILE | awk '$NF == "Linux" { print $2 }')
BYTE_OFFSET=$(expr 512 \* $SECTOR_OFFSET)

mkdir -p $IMG_DIR
mount -o loop,offset=$BYTE_OFFSET $IMG_FILE $IMG_DIR
