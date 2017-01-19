#!/bin/sh

find . -name "*.sh" | xargs chmod u+x

./mount-image.sh
./prepare-image-for-emulation.sh
./unmount-image.sh

./run-ansible-locally.sh

./mount-image.sh
./prepare-image-for-deployment.sh
./unmount-image.sh
