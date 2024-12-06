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

variable "sg_name"{
    type = string
}

variable "AMI_ID"{
    type= string
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