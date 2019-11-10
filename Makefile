# Supply environment variables for disk, such as `disk=/dev/rdisk2`.
IMAGE_NAME=pi-box
build:
		docker build -t ${IMAGE_NAME} .
run-localhost:
		docker run -v `pwd`/docker-src:/src -it --rm --name ${IMAGE_NAME} --privileged ${IMAGE_NAME}
debug:
		docker run -v `pwd`/docker-src:/src -it --rm --name ${IMAGE_NAME} --privileged --network=host ${IMAGE_NAME} /bin/bash
run-network:
		docker run -v `pwd`/docker-src:/src -it --rm --name ${IMAGE_NAME} --privileged --network=host ${IMAGE_NAME} ./run-ansible.sh
rm:
		docker rm -f `docker ps -aqf "name=${IMAGE_NAME}"`
deploy:
		sudo dd bs=32m if=docker-src/raspbian.img of=$(disk)
deploy-progress:
		sudo kill -INFO $(pgrep ^dd)
retrieve:
		sudo dd bs=32m if=$(disk) of=docker-src/retrieved.img
