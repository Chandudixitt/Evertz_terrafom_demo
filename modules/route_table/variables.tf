variable "m_vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "m_publicrtname" {
  type = string
}
variable "m_internet_gateway_id" {
  description = "Internet Gateway ID for public subnet"
  type        = string
}

variable "m_subnet_id" {
    type  = list(string)
}
