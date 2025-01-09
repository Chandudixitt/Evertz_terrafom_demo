resource "aws_vpc" "main" {
  cidr_block = var.m_vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "${var.m_vpc_name}"
  }
}

output "vpc_id" {
  value = aws_vpc.main.id
}
