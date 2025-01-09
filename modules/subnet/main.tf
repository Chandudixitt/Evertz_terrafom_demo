data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "public" {
  vpc_id            = var.m_vpc_id
  cidr_block        = var.m_subnet_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.m_snetname}"
  }
}

output "subnet_ids" {
  value = aws_subnet.public.id
}

