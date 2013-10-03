#!/usr/bin/env bash
#
# Bootstrap the vagrant VM by installing Ansible and
# letting ansible do the provisioning in local connection mode
#
apt-get update
apt-get install -y python-software-properties
add-apt-repository -y ppa:rquillo/ansible
apt-get update
apt-get install -y ansible
cp /vagrant/ansible/hosts /home/vagrant/
chmod 666 /home/vagrant/hosts
ansible-playbook /vagrant/ansible/playbook.yml -i /home/vagrant/hosts --connection=local
