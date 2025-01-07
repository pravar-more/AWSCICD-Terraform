#!/bin/bash

################
################
#Define Variables
REGION = "us-east-1"
KEY_NAME = "NVirginia_key_VBanner"
JENKINS_MACHINE_IP = ""


#clone repo
git clone https://github.com/pravar-more/AWSCICD-Terraform.git

git remote remove origin
git remote add origin https://github.com/pravar-more/AWSCICD-Terraform.git

# Navigate to the directory of your Git repository
cd ./AWSCICD-Terraform/modules/
# Pull the latest changes

git fetch
git pull origin master

echo "-------------------------------------"

# Display hostname
echo "Hostname:"
hostname

echo "Setup complete!"

######################################################
cd
echo "0000000000000000000"
ls
cd AWSCICD-Terraform/
chmod +x mainJob.sh
cd
