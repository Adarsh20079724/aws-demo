# outputs.tf
# Defines outputs that will be displayed after terraform apply

output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.web.id
}

output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "ec2_public_ip" {
  description = "Public IP address of EC2 instance"
  value       = var.enable_elastic_ip ? aws_eip.web[0].public_ip : aws_instance.web.public_ip
}

output "ec2_public_dns" {
  description = "Public DNS name of EC2 instance"
  value       = aws_instance.web.public_dns
}

output "ssh_private_key_path" {
  description = "Path to SSH private key file"
  value       = local_file.private_key.filename
}

output "ssh_command" {
  description = "SSH command to connect to EC2 instance"
  value       = "ssh -i ${local_file.private_key.filename} ec2-user@${var.enable_elastic_ip ? aws_eip.web[0].public_ip : aws_instance.web.public_ip}"
}

output "app_url" {
  description = "URL to access your application"
  value       = "http://${var.enable_elastic_ip ? aws_eip.web[0].public_ip : aws_instance.web.public_ip}"
}

output "github_secret_ec2_host" {
  description = "Value for GitHub Secret: EC2_HOST"
  value       = var.enable_elastic_ip ? aws_eip.web[0].public_ip : aws_instance.web.public_ip
}

output "github_secret_ec2_username" {
  description = "Value for GitHub Secret: EC2_USERNAME"
  value       = "ec2-user"
}

