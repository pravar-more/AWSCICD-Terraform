#!/bin/bash

cd $HOME/AWSCICD-Terraform/modules/jenkinsEC2/
terraform destroy -auto-approve
cd