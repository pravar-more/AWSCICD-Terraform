#!/bin/bash
cd $HOME/AWSCICD-Terraform/jobs/
echo "00000000000000ini Setup"
chmod +x iniSetup.sh provisionResource_job.sh ansibleJob.sh ssh-keygenJob.sh

# #ssh -keygen job
# cd $HOME/AWSCICD-Terraform/jobs/
# source ./ssh-keygenJob.sh

#source ./iniSetup.sh     ##HAVE to un comment this
cd
#############################
#provisionResource Terraform
cd $HOME/AWSCICD-Terraform/jobs/
echo "00000000000000proviosn resources"
source ./provisionResource_job.sh
cd
#############################
cd $HOME/AWSCICD-Terraform/jobs/
echo "00000000000000ansible job"
./ansibleJob.sh
#############################
#############################

cd