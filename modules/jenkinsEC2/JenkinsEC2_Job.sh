#!/bin/bash
    
    sleep 80
    ch $HOME/AWSCICD-Terraform/jobs/
    chmod +x ssh-keygenJob.sh
    ./ssh-keygenJob.sh
    echo "Hello, World" > /var/www/html/index.html
    