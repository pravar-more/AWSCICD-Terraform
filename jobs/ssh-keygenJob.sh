#!/bin/bash

##################################################
#ssh key generate
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -N ""

cat $HOME/.ssh/id_rsa.pub