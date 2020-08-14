#!/usr/bin/env bash

# create virtualbox
vagrant up

# create ssh config
INCLUDE_SSH_CONFIG="Include ~/.ssh/config_WorkVM"

if ! grep -Fsq $INCLUDE_SSH_CONFIG ~/.ssh/config
then
    echo "Include ~/.ssh/config_WorkVM" >> ~/.ssh/config
    vagrant ssh-config --host WorkVM > ~/.ssh/config_WorkVM
    echo "SSH connection ready"
fi

echo "Connection with ssh enable: ssh WorkVM"
