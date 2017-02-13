#!/usr/bin/expect -f
set timeout -1

spawn ./start-emulator.sh
expect "pi@*:"
send "sudo update-rc.d ssh enable; sudo service ssh start;\r"
expect "pi@*:"
system ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook \
	-i playbook/localhost.hosts playbook/site.yml
send "sudo shutdown now\r"
interact
