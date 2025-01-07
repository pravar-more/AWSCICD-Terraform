#!/bin/bash

###########################################################################
###########################################################################
#Define Variables
AWS_ACCESS_KEY = "AKIAQQABDQUAVYOYYA4Q"
AWS_SECRET_KEY = "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"
REGION = "us-east-1"
KEY_NAME = "NVirginia_key_VBanner"
JENKINS_MACHINE_IP = ""

######################################################
#AWS Configure
# Define your AWS credentials and default region
AWS_ACCESS_KEY_ID="AKIAQQABDQUAVYOYYA4Q"
AWS_SECRET_ACCESS_KEY="6s+gghOvBy5Z+z2b6Pr74np4H9N1aP/HqOd3t624"
AWS_DEFAULT_REGION="us-east-1"

# Export AWS keys as environment variables 
export AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY
export AWS_DEFAULT_REGION

# Configure AWS CLI
aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set default.region $AWS_DEFAULT_REGION

# Verify configuration
aws configure list


#Provisioning Terraform Resources
cd $HOME/AWSCICD-Terraform/modules/jenkinsEC2/
terraform init
terraform validate
terraform fmt

# Plan the Terraform changes 
echo "Planning Terraform changes..." 
terraform plan -var "AWS_ACCESS_KEY=$AWS_ACCESS_KEY_ID" -var "AWS_SECRET_KEY=$AWS_SECRET_ACCESS_KEY" -var "REGION=$AWS_DEFAULT_REGION" -out=tfplan
terraform apply -auto-approve tfplan

# Capture the output variable value
JENKINS_MACHINE_IP=$(terraform output -raw instance_public_ip)
# Use the captured value
echo "The IP address of the Jenkins instance is: $JENKINS_MACHINE_IP"
#####################################
export JENKINS_MACHINE_IP
echo $JENKINS_MACHINE_IP > /tmp/my_var_file
