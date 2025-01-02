output "instance_id" {
    description = "The id of ec2 instance"
    value =  aws_instance.main.id
}

output "instance_public_ip" {
    description = "the publice ip address of ec2 instance"
    value = aws_instance.main.public_ip
}
