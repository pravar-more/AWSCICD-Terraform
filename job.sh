chmod +x iniSetup.sh
#./iniSetup.sh
#############################
#provisionResource Terraform
echo "proviosn resources"
chmod +x provisionResource_job.sh
./provisionResource_job.sh
#############################
echo "ansible job"
chmod +x ansibleJob.sh
./ansibleJob.sh
#############################
#############################