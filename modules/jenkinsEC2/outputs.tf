output "instance_id" {
    description = "The id of ec2 instance"
    value =  aws_instance.main[0].id
}

output "instance_public_ip" {
    description = "the publice ip address of ec2 instance"
    value = aws_instance.main[0].public_ip
}
