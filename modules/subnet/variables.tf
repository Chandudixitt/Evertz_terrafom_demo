variable "m_vpc_id" {
  description = "VPC ID to create subnets"
  type        = string
}
variable "m_snetname" {
  type = string
}
variable "m_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}
variable "m_availability_zone" {
}

