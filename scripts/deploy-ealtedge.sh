#!/bin/bash

rm .bash_history
scripts/replace-ips.sh $1 $2 $3
scripts/copy-ssh-keys.sh $1 $2 $3 $4

cd ~/ealt-edge/ocd/infra/playbooks/ && ansible-playbook ealt-all.yml -i ealt-inventory.ini --extra-vars "operation=install"
sleep 2
cd ~/ealt-edge/ocd/infra/playbooks/ && ansible-playbook ealt-all-p2.yml -i ealt-inventory.ini --extra-vars "operation=install"
