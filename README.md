# Ansible demo

Demonstrates basics of [Ansible](http://www.ansible.com/),
including inventory, commands, modules, and playbooks.

[Vagrant](https://www.vagrantup.com/) is used to create a
[multi-machine environment](http://docs.vagrantup.com/v2/multi-machine/index.html)
containing three Ubuntu servers.
Although Vagrant's [Ansible provisioner](http://docs.vagrantup.com/v2/provisioning/ansible.html)
could be used to implement the functionality in this demo, the aim was to make its use of Vagrant
incidental: after `vagrant up` has been run and SSH is configured, the servers are treated just
like any other hosts on the public network.

The demo script first executes standard bash commands for comparison before showing how Ansible
can run equivalent commands or more sophisticated playbooks.

## Files

* `Vagrantfile`: Vagrant configuration for three Ubuntu virtual machines on the public network.
* `ssh_config`: SSH config for VMs, including paths to Vagrant's randomly-generated private keys.
* `ansible.cfg`: Ansible configuration, including reference to local SSH config.
* `hosts`: Ansible inventory file listing three Vagrant hosts in the "webservers" group.
* `webserver.yml`: Ansible playbook for installing and configuring a web server on each host.
* `templates/`: Contains [Jinja2](http://jinja.pocoo.org/) templates used by Ansible playbooks.
* `demo.sh`: Creates servers, runs standard bash commands, then demonstrates Ansible.

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
