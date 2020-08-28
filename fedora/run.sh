#!/bin/bash -v

USER=ismaelmt

# Install prerequisites
sudo dnf install openssh-server ansible -y 
sudo systemctl start sshd

# Run the playbook
ansible-playbook main.yml -i hosts -u $USER -K -v
