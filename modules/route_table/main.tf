resource "aws_route_table" "publicrt" {
  vpc_id = var.m_vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.m_internet_gateway_id
  }

  tags = {
    Name = var.m_publicrtname
  }
}

resource "aws_route_table_association" "public" {
  count = length(var.m_subnet_id)
  subnet_id  = var.m_subnet_id[count.index]
  route_table_id = aws_route_table.publicrt.id
}

output "public_route_table_id" {
  value = aws_route_table.publicrt.id
}
