#!/bin/bash

################
################
#Define Variables

#install git
sudo yum install git -y

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
echo "0000000000000000000"
cd $HOME/AWSCICD-Terraform/jobs/
chmod +x mainJob.sh
ls $HOME/AWSCICD-Terraform/
cd
