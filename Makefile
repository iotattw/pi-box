IMAGE_NAME=pi-box

build:
		docker build -t ${IMAGE_NAME} .
run-localhost:
		docker run -v `pwd`/docker-src:/src -it --rm --name ${IMAGE_NAME} --privileged ${IMAGE_NAME}
debug:
		docker run -v `pwd`/docker-src:/src -it --rm --name ${IMAGE_NAME} --privileged ${IMAGE_NAME} /bin/bash
run-network:
		docker run -v `pwd`/docker-src:/src -it --rm --name ${IMAGE_NAME} --privileged --network=host ${IMAGE_NAME} ./run-ansible.sh
connect:
		docker exec -it ${IMAGE_NAME} /bin/bash
rm:
		docker rm -f `docker ps -aqf "name=${IMAGE_NAME}"`
deploy:
		sudo dd bs=4m if=docker-src/raspbian.img of=$(disk)
