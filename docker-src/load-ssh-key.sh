#!/bin/sh
IMG_DIR=$1
HOME_DIR=$IMG_DIR/home/pi/

mkdir -p $HOME_DIR/.ssh
cat /root/.ssh/id_rsa.pub >> $HOME_DIR/.ssh/authorized_keys
