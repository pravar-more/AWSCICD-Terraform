#!/bin/bash

echo "00000000000000ini Setup"
chmod +x iniSetup.sh provisionResource_job.sh ansibleJob.sh ssh-keygenJob.sh
#source ./iniSetup.sh
#./iniSetup.sh
cd
#############################
#provisionResource Terraform
cd ./AWSCICD-Terraform/
echo "00000000000000proviosn resources"
#source iniSetup.sh 
source ./provisionResource_job.sh
cd
#############################
cd ./AWSCICD-Terraform/
echo "00000000000000ansible job"
./ansibleJob.sh
#############################
#############################