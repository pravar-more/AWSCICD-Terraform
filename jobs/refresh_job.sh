#!/bin/bash
chmod +x destroyProvisionResource_job.sh
cd $HOME/AWSCICD-Terraform/jobs/
./destroyProvisionResource_job.sh
git restore .
git fetch
git pull origin master
chmod +x 
cd $HOME/AWSCICD-Terraform/jobs/
chmod +x mainJob.sh
cd 