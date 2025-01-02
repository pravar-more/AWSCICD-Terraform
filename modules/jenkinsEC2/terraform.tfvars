#provider

AWS_ACCESS_KEY = "AKIAQQABDQUAVYOYYA4Q"
AWS_SECRET_KEY = "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"
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
KEY_NAME = "NVirginia_key_VBanner"
