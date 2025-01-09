#!/bin/bash
chmod +x destroyProvisionResource_job.sh
cd $HOME/AWSCICD-Terraform/jobs/
./destroyProvisionResource_job.sh
sleep 30
git restore .
git fetch
git pull origin master
sleep 10
cd $HOME/AWSCICD-Terraform/jobs/
chmod +x mainJob.sh refresh_job.sh
ls
cd 