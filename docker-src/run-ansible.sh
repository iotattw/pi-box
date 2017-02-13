#!/bin/sh 
ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook \
	-i playbook/network.hosts playbook/site.yml
