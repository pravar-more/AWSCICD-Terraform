#provider

#AWS_ACCESS_KEY = "AKIA23WHUNU7BHILUPHI"
#AWS_SECRET_KEY = "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"
#REGION         = "us-east-1"
availability_zones = "us-east-1a"
#vpc_name = "CustomVPC-created"
sg_name = "Custom_sg_new"
AMI_MAP = { 
        "us-west-2" = "ami-0abcdef1234567890" 
        "us-east-1" = "ami-01816d07b1128cd2d" 
        # Add other regions and their corresponding AMI IDs 
    } 
INSTANCE_NAME = "JenkinsEC2"
INSTANCE_TYPE = "t2.micro"
KEY_NAME = "NVirginia_key_DevZops"
