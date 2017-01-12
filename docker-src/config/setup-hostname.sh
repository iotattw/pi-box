#!/bin/bash
MACHINE_NAME=machine-name

echo "127.0.0.1    $MACHINE_NAME" >> etc/hosts
echo $MACHINE_NAME > etc/hostname
