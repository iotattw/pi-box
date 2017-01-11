#!/bin/sh
IMG_FILE=raspbian.img

./mount-image.sh $IMG_FILE
./prepare-image-for-emulation.sh $IMG_FILE
./unmount-image.sh $IMG_FILE
./start-emulator.sh kernel $IMG_FILE
