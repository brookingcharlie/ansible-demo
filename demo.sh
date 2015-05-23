#!/bin/bash

# Print explanation of steps in demo using "colourised" bash output.
# See http://www.tldp.org/LDP/abs/html/colorizing.html.
log()
{
  echo -e '\033[01;34m'"\n## ${1}\n"; tput sgr0
}

log "Start and provision vagrant environment"
vagrant up

log "Ping hosts using standard bash commands"
for host in ansible-{1..3}; do
  ping -c 1 ${host}
done

log "Ping hosts using ansible inventory and ping module"
ansible all -i hosts -m ping

log "Run ansible playbook to install and configure webserver on each host"
ansible-playbook -i hosts webserver.yml

log "Verify that webserver on each host is working"
for host in ansible-{1..3}; do
  curl http://${host}/
done

log "Destroy vagrant environment"
vagrant destroy -f
