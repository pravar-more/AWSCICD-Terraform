#!/bin/bash
chmod +x destroyProvisionResource_job.sh
cd $HOME/AWSCICD-Terraform/jobs/
./destroyProvisionResource_job.sh
git restore .
git fetch
git pull origin master

cd $HOME/AWSCICD-Terraform/jobs/
chmod +x mainJob.sh
chmod +x refresh_job.sh
ls
cd 