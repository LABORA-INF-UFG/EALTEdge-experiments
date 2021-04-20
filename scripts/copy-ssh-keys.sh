#!/bin/bash

echo " --- copying keys ..."
sshpass -p "$4" ssh-copy-id -o StrictHostKeyChecking=no root@$1
sshpass -p "$4" ssh-copy-id -o StrictHostKeyChecking=no root@$2
sshpass -p "$4" ssh-copy-id -o StrictHostKeyChecking=no root@$3

echo " --- testing..."
ssh root@$1 "ifconfig eth0 | grep $1"
ssh root@$2 "ifconfig eth0 | grep $2"
ssh root@$3 "ifconfig eth0 | grep $3"
