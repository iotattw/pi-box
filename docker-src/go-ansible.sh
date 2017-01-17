#!/bin/sh
IMG_FILE=raspbian.img
IMG_DIR=/mnt/`./truncate-extension.sh $1`

find . -name "*.sh" | xargs chmod u+x

./mount-image.sh $IMG_FILE $IMG_DIR
./load-ssh-key.sh $IMG_DIR
./prepare-image-for-emulation.sh $IMG_DIR
./unmount-image.sh $IMG_DIR

./start-emulator.sh kernel $IMG_FILE &
sleep 40
./run-ansible.sh
./stop-emulator.sh

./mount-image.sh $IMG_FILE $IMG_DIR
./prepare-image-for-deployment.sh $IMG_DIR
./unmount-image.sh $IMG_DIR
