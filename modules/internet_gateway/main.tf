resource "aws_internet_gateway" "main" {
  vpc_id = var.m_vpc_id
  tags = {
    Name = "${var.m_igwname}"
  }
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
}
