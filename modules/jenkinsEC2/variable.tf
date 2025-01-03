variable "REGION" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "AWS_ACCESS_KEY" {
  type      = string
  sensitive = true
}

variable "AWS_SECRET_KEY" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
}

variable "availability_zones" {
}
#variable "vpc_name" {
 # type = string
#
#}
variable "create_sg" {
  default = 1
} 
variable "create_instance" {
  default = 1
}
variable "sg_name"{
    type = string
}
variable "AMI_MAP" { 
    description = "Map of region to AMI ID" 
    type = map(string) 
}
variable "INSTANCE_NAME"{
    type = string
}
variable "KEY_NAME" {
    type = string 
}
variable "INSTANCE_TYPE" {
    type = string 
}  
