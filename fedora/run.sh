#!/bin/bash -v

USER=ismaelmt

# Install prerequisites
sudo dnf install openssh-server ansible -y 
sudo systemctl start sshd

# TODO: copy the ssh key
# TODO: Add git config email and user

# Run the playbook
ansible-playbook main.yml -i hosts -u $USER -K -v

# Change this repo's url to use the ssh key
git remote set-url origin git@github.com:IsmaelMT/provisioning
