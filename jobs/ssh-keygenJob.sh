#!/bin/bash

##################################################
#ssh key generate
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -N ""
echo "This is public key ----------"
cat $HOME/.ssh/id_rsa.pub