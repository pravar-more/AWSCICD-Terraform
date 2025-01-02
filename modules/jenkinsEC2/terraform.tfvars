#provider

AWS_ACCESS_KEY = ""
AWS_SECRET_KEY = ""
REGION         = "us-east-1"
availability_zones = "us-east-1"
#vpc_name = "CustomVPC-created"
sg_name = "Custom_sg"
AMI_MAP = { 
        "us-west-2" = "ami-0abcdef1234567890" 
        "us-east-1" = "ami-0453ec754f44f9a4a" 
        # Add other regions and their corresponding AMI IDs 
    } 
INSTANCE_NAME = "JenkinsEC2"
INSTANCE_TYPE = "t2.micro"
#KEY_NAME = "NVirginia-Key"
KEY_NAME = ""
