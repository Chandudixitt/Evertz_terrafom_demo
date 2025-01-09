output "ec2_instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.main.id
}
