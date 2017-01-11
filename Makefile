IMAGE_NAME=pi-bakery

build:
		docker build -t ${IMAGE_NAME} .
run:
		pwd
		docker run -v `pwd`/docker-src:/src -it --rm --name ${IMAGE_NAME} --privileged ${IMAGE_NAME}