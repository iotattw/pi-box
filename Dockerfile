FROM debian:jessie-slim
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7BB9C367 && \
	apt-get update -y && \
	apt-get install -y qemu ansible expect && \
	rm -rf /var/lib/apt/lists/* && \
	ssh-keygen -q -t rsa -N "" -f /root/.ssh/id_rsa
WORKDIR /src
CMD chmod u+x ./*.sh && ./go.sh
