resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id
  key_name      = var.key_name

  provisioner "file" {
    source      = var.ssh_public_key
    destination = "/home/ec2-user/.ssh/authorized_keys"
  }
}

output "ec2_instance_id" {
  value = aws_instance.main.id
}
