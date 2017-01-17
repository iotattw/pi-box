#!/bin/sh
IMG_DIR=$1
INIT_DIR=$IMG_DIR/etc/pi-init
INIT_SCRIPT=pi-init-scripts.sh

rm -rf $INIT_DIR

rm $IMG_DIR/etc/rc2.d/S04$INIT_SCRIPT
rm $IMG_DIR/etc/init.d/$INIT_SCRIPT
