#!/bin/bash

###########################################################################
#Ansible Playbook configurations
#ansible-playbook <playbookFile.yaml>
echo $JENKINS_MACHINE_IP
echo "[jenkinEC2] $JENKINS_MACHINE_IP \n [eks] " > ./playbooks/inventory1.ini

#ansible-playbook jenkinsMachinePlaybook.yaml