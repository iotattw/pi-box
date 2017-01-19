#!/usr/bin/expect -f
set timeout -1

spawn ./start-emulator.sh
expect "pi@*:"
send "sudo update-rc.d ssh enable; sudo service ssh start;\r"
expect "pi@*:"
spawn ./run-ansible.sh
wait
send "sudo shutdown now\r"
interact
