output "instance_id" {
    description = "The id of ec2 instance"
    value =  aws_instance.main1.id
}

output "instance_public_ip" {
    description = "the publice ip address of ec2 instance"
    value = aws_instance.main1.public_ip
}

output "instance_ip" {
  value = length(aws_instance.main1) > 0 ? aws_instance.main1.public_ip : "No instance created"
}
