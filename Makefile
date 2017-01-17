IMAGE_NAME=pi-box

build:
		docker build -t ${IMAGE_NAME} .
run:
		docker run -v `pwd`/docker-src:/src -it --rm --name ${IMAGE_NAME} --privileged ${IMAGE_NAME}
debug:
		docker run -v `pwd`/docker-src:/src -it --rm --name ${IMAGE_NAME} --privileged ${IMAGE_NAME} /bin/bash
connect:
		docker exec -it ${IMAGE_NAME} /bin/bash
rm:
		docker rm -f `docker ps -aqf "name=${IMAGE_NAME}"`
