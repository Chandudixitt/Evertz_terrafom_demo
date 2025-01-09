variable "public_subnet_id" {
  description = "Public Subnet ID to launch the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
}

variable "key_name" {
  description = "SSH Key name"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH Public Key"
  type        = string
}
