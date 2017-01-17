#!/bin/sh 
ansible-playbook \
	-e 'host_key_checking=false' \
	-i playbook/hosts playbook/site.yml -vv
