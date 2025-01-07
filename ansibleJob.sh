#!/bin/bash

###########################################################################
#Ansible Playbook configurations
#ansible-playbook <playbookFile.yaml>
echo $JENKINS_MACHINE_IP
#JENKINS_MACHINE_IP = $(cat /tmp/my_var_file)
echo $(cat /tmp/my_var_file)
echo "in ansibleJob.sh"
echo "[jenkinsMachine] 
$JENKINS_MACHINE_IP 
[eks] 
" > ./playbooks/inventory1.ini

#ansible-playbook jenkinsMachinePlaybook.yaml