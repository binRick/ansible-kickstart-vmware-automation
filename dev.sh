#!/bin/bash
nodemon -w . -e yaml,j2,txt -x ansible-playbook -- -i Inventory.txt playbooks/install.yaml 
