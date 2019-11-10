#!/bin/sh 
ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook -vv \
	-i playbook/network.hosts playbook/basics.yml
