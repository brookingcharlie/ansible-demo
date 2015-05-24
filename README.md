# Ansible demo

Demonstrates basics of [Ansible](http://www.ansible.com/), including inventory, commands,
and playbooks.

[Vagrant](https://www.vagrantup.com/) is used to create a
[multi-machine environment](http://docs.vagrantup.com/v2/multi-machine/index.html)
containing three Ubuntu servers.
Although Vagrant's [Ansible provisioner](http://docs.vagrantup.com/v2/provisioning/ansible.html)
could be used to implement the functionality in this demo, the aim was to make the use of Vagrant
incidental: after `vagrant up` has been run and SSH is configured, Ansible is run against the servers
just like any other hosts on the public network.

## Files

* `Vagrantfile`: Vagrant configuration for three Ubuntu virtual machines on the public network.
* `ssh_config`: SSH config for VMs, including paths to Vagrant's randomly-generated private keys.
* `ansible.cfg`: Ansible configuration, including reference to local SSH config.
* `hosts`: Ansible inventory file listing three Vagrant hosts in the "webservers" group.
* `webserver.yml`: Ansible playbook for installing and configuring a web server on each host.
* `demo.sh`: Creates servers, runs standard bash/ssh commands, then demonstrates Ansible.

## Prerequisites

[Ansible](http://www.ansible.com/),
[Vagrant](https://www.vagrantup.com/),
`bash`,
`ssh`,
`curl`.

## Running the demo

```
./demo.sh
```
