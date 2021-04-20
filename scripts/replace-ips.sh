#!/bin/bash

echo "replacing jump node ..."
sed -i "s/JUMP-NODE/$1/g" /root/ealt-edge/ocd/infra/playbooks/config.yml
sed -i "s/JUMP-NODE/$1/g" /root/ealt-edge/ocd/infra/playbooks/ealt-inventory.ini

echo "replacing center node ..."
sed -i "s/CENTER-NODE/$2/g" /root/kubespray/inventory/mycluster/hosts.yaml
sed -i "s/CENTER-NODE/$2/g" /root/kubespray/extra_playbooks/inventory/mycluster/hosts.yaml
sed -i "s/CENTER-NODE/$2/g" /root/ealt-edge/ocd/infra/playbooks/ealt-inventory.ini


echo "replacing edge node ..."
sed -i "s/EDGE-NODE/$3/g" /root/ealt-edge/ocd/infra/playbooks/ealt-inventory.ini
