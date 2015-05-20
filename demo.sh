#!/bin/bash
vagrant up
ansible all -i hosts -m ping
ansible-playbook -i hosts webserver.yml
for i in $(seq 1 3); do curl http://ansible-${i}/; done
vagrant destroy -f
