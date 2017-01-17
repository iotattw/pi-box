#!/bin/sh
IMG_DIR=$1
INIT_DIR=$IMG_DIR/etc/pi-init
INIT_SCRIPT=pi-init-scripts.sh

mkdir -p $INIT_DIR
cp /src/init/* $INIT_DIR

cp pi-init-scripts.sh $IMG_DIR/etc/init.d/$INIT_SCRIPT
ln -rs $IMG_DIR/etc/init.d/$INIT_SCRIPT $IMG_DIR/etc/rc2.d/S04$INIT_SCRIPT