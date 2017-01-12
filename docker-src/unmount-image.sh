#!/bin/sh
IMG_DIR=/mnt/`./truncate-extension.sh $1`

umount $IMG_DIR
