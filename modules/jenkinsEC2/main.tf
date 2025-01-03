# Check if security group exists 
data "aws_security_group" "existing_sg" { 
    
    filter {
        name = "group-name" 
        values = [var.sg_name] 
    }
    count = var.create_sg ? 1 : 0    
    depends_on = [aws_security_group.main]
}


resource "aws_security_group" "main" {
    #count = length(data.aws_security_group.existing_sg.id) == 0 ? 1 : 0
    count = var.create_sg ? 0 : 1
    name = var.sg_name
    
    ingress {
        from_port = 22 
        to_port = 22 
        protocol = "tcp" 
        cidr_blocks = ["0.0.0.0/0"]

    }
    ingress {
        from_port = 80 
        to_port = 80
        protocol = "tcp" 
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1" 
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = var.sg_name

    }
}

locals {
    sg_id = var.create_sg ? data.aws_security_group.existing_sg[0].id : aws_security_group.main[0].id 
}

# Check if instance exists 
data "aws_instance" "existing_instance" {
    filter { 
        name = "tag:Name" 
        values = [var.INSTANCE_NAME] 
    } 
    count = var.create_instance ? 1 : 0
}

resource "aws_instance" "main1" {
#   count = length(data.aws_instance.existing_instance.id) == 0 ? 1 : 0
    count = var.create_instance ? 0 : 1
    ami = lookup(var.AMI_MAP, var.REGION, "ami-005fc0f236362e99f")
#   ami = "ami-005fc0f236362e99f"
    instance_type = var.INSTANCE_TYPE 
    key_name = var.KEY_NAME 
    #security_groups = count.index == 0 ? [aws_security_group.main[0].id] : [data.aws_security_group.existing_sg[0].id]
    security_groups = [local.sg_id]
    tags = {
        Name = var.INSTANCE_NAME
    }
    user_data = <<-EOF
        #!/bin/bash
        echo "Hello, World" > /var/www/html/index.html
        EOF
 }






output "instance_id" {
    description = "The id of ec2 instance"
    value =  aws_instance.main1[0].id
}

output "instance_public_ip" {
    description = "the publice ip address of ec2 instance"
    value = aws_instance.main1[0].public_ip
}

output "instance_ip" {
  value = length(aws_instance.main1) > 0 ? aws_instance.main1[0].public_ip : "No instance created"
}
