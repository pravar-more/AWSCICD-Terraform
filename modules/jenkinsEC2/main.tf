# Check if security group exists 
data "aws_security_group" "existing_sg" { 
    filter {
        name = "group-name" 
        values = [var.sg_name] 
    } 
}


resource "aws_security_group" "main" {
    count = length(data.aws_security_group.existing_sg.id) == 0 ? 1 : 0
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


# Check if instance exists 
data "aws_instance" "existing_instance" {
    filter { 
        name = "tag:Name" 
        values = [var.INSTANCE_NAME] 
    } 
}



resource "aws_instance"  "main" {
    count = length(data.aws_instance.existing_instance.id) == 0 ? 1 : 0
    ami = lookup(var.AMI_MAP, var.REGION, "ami-005fc0f236362e99f")
    instance_type = var.INSTANCE_TYPE 
    key_name = var.KEY_NAME 
    security_groups = count.index == 0 ? [aws_security_group.main[0].id] : data.aws_security_group.existing_sg.id
    tags = {
        Name = var.INSTANCE_NAME
    }
    user_data = <<-EOF
        #!/bin/bash
        echo "Hello, World" > /var/www/html/index.html
        EOF
 }
