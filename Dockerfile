FROM debian:jessie-slim
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7BB9C367 && \
	apt-get update -y && \
	apt-get install -y qemu qemu-system qemu-user-static ansible wpasupplicant && \
	rm -rf /var/lib/apt/lists/*
CMD chmod u+x /src/*.sh && cd /src && ./go.sh
