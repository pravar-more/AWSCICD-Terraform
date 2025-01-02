resource "aws_security_group" "main" {
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
        NAME = var.sg_name

    }
}


resource "aws_instance"  "main" {
    ami = lookup(var.AMI_MAP, var.REGION, "ami-0453ec754f44f9a4a")
    instance_type = var.INSTANCE_TYPE 
    key_name = var.KEY_NAME 
    security_groups = [aws_security_group.main.name]
    tags = {
        NAME = var.INSTANCE_NAME
    }
    user_data = <<-EOF
        #!/bin/bash
        echo "Hello, World" > /var/www/html/index.html
        EOF
 }
