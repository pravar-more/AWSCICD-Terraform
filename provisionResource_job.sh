###########################################################################
###########################################################################

#Provisioning Terraform Resources
cd ./AWSCICD-Terraform/modules/jenkinsEC2
terraform init
terraform validate
terraform fmt

# Plan the Terraform changes 
echo "Planning Terraform changes..." 
terraform plan -var "AWS_ACCESS_KEY=$AWS_ACCESS_KEY" -var "AWS_SECRET_KEY=$AWS_SECRET_KEY" -var "REGION=$REGION" -out=tfplan
terraform apply -auto-approve tfplan

# Capture the output variable value
JENKINS_MACHINE_IP=$(terraform output -raw instance_public_ip)
# Use the captured value
echo "The IP address of the Jenkins instance is: $JENKINS_MACHINE_IP"
#####################################
export JENKINS_MACHINE_IP