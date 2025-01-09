variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}
variable "create_vpc" {
  type = string
}
variable "App_prefix" {
  type = string
}
variable "Env_prefix" {
  type = string
}
variable "vpc_prefix" {
  type = string
}
variable "igw_prefix" {
  type = string
}
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type        = string
}

variable "subnet_prefix" {
  type = string
}

variable "publicrt_prefix" {
  type = string
}
variable "key_name" {
  description = "SSH Key pair name"
  type        = string
}

#variable "instance_type" {
#  description = "EC2 instance type"
#  type        = string
#}

#variable "ami_id" {
#  description = "AMI ID for EC2 instance"
#  type        = string
#}

#variable "ssh_public_key" {
#  description = "SSH public key to connect to EC2 instance"
#  type        = string
#}

variable "subnet_cidr" {
  type = list(object({
    address_prefix = string
  }))
}

#variable "instance_details" {
#  type = map(object({
#    assign_public_ip = string
#    instance_type = string
#    volume_type = string
#    volume_size = number
#    ami_id = string
#  }))
#}
