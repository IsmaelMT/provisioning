#!/bin/bash

# Script to run the ansible playbook for nvidia drivers

ansible-playbook nvidia.yml -i hosts -u $USER -K -v
sudo reboot

