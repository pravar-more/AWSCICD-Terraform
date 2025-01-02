#!/bin/bash

#install git
sudo yum install git -y

#clone repo
#git clone https://github.com/pravar-more/AWSCICD-Terraform.git

#git remote
git remote add origin https://github.com/pravar-more/AWSCICD-Terraform.git

# Navigate to the directory of your Git repository
cd /AWSCICD-Terraform/modules/
# Pull the latest changes

git fetch
git pull origin master

# Display machine purpose
echo "This is the ultimate control machine"
echo "-------------------------------------"

# Update package list
echo "Updating package list..."
sudo yum update -y

# Install Terraform
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
terraform -v

# Install Ansible
echo "Installing Ansible..."
sudo yum install ansible -y

# Verify Ansible installation
if command -v ansible >/dev/null 2>&1; then
    echo "Ansible installation successful."
    ansible --version
else
    echo "Ansible installation failed."
    exit 1
fi

# Display hostname
echo "Hostname:"
hostname

echo "Setup complete!"

