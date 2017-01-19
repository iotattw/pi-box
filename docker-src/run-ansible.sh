#!/bin/sh 
ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook \
	-i playbook/hosts playbook/site.yml
