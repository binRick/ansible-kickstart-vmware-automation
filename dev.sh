#!/bin/bash
nodemon -w . -e yaml,j2,txt -x ansible-playbook -- -i Inventory.txt playbooks/esxHosts.yaml
#nodemon -w . -e yaml,j2,txt -x ansible-playbook -- -i Inventory.txt playbooks/setup.yaml
#nodemon -w . -e yaml,j2,txt -x ansible-playbook -- -i Inventory.txt playbooks/generateVmKickstartFile.yaml
