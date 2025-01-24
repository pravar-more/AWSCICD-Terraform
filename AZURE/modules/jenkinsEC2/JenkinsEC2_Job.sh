#!/bin/bash
    
    sleep 80
    cd $HOME/AWSCICD-Terraform/jobs/
    chmod +x ssh-keygenJob.sh
    ./ssh-keygenJob.sh
    cd
    echo "Hello, World" > /var/www/html/index.html
    