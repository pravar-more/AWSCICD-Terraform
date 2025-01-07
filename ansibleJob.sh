#!/bin/bash

###########################################################################
#Ansible Playbook configurations
#ansible-playbook <playbookFile.yaml>
JENKINS_MACHINE_IP = $(cat /tmp/my_var_file)
echo $JENKINS_MACHINE_IP
echo "in ansibleJob.sh"
echo "[jenkinsMachine] $JENKINS_MACHINE_IP 
      [eks] " > ./playbooks/inventory1.ini

#ansible-playbook jenkinsMachinePlaybook.yaml